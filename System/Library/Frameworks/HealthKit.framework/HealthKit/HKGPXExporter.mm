@interface HKGPXExporter
+ (id)_displayNameForRoute:(id)a3;
+ (id)fileNameForRoute:(id)a3;
- (BOOL)_appendGPXHeaderWithError:(id *)a3;
- (BOOL)_appendString:(id)a3 error:(id *)a4;
- (BOOL)appendLocations:(id)a3 error:(id *)a4;
- (BOOL)finishWithError:(id *)a3;
- (HKGPXExporter)initWithURL:(id)a3 route:(id)a4;
- (id)_trackpointEntryForLocation:(id)a3;
@end

@implementation HKGPXExporter

- (HKGPXExporter)initWithURL:(id)a3 route:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKGPXExporter;
  v9 = [(HKGPXExporter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    v10->_isFinished = 0;
    objc_storeStrong(&v10->_route, a4);
    v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
    isoFormatter = v10->_isoFormatter;
    v10->_isoFormatter = v11;
  }

  return v10;
}

- (BOOL)appendLocations:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_isFinished)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:100 description:@"Export has already finished."];
LABEL_3:
    v7 = 0;
    goto LABEL_16;
  }

  if (!self->_fileHandle)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [(NSURL *)self->_URL path];
    v27 = *MEMORY[0x1E696A3A0];
    v28[0] = *MEMORY[0x1E696A380];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v16 createFileAtPath:v17 contents:0 attributes:v18];

    v19 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:self->_URL error:a4];
    fileHandle = self->_fileHandle;
    self->_fileHandle = v19;

    if (!self->_fileHandle || ![(HKGPXExporter *)self _appendGPXHeaderWithError:a4])
    {
      goto LABEL_3;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __39__HKGPXExporter_appendLocations_error___block_invoke;
        v21[3] = &unk_1E73839D0;
        v21[4] = self;
        v21[5] = v13;
        if (!HKWithAutoreleasePool(a4, v21))
        {
          v7 = 0;
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_15:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __39__HKGPXExporter_appendLocations_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _trackpointEntryForLocation:*(a1 + 40)];
  v5 = [*(a1 + 32) _appendString:v4 error:a2];

  return v5;
}

- (BOOL)finishWithError:(id *)a3
{
  if (!self->_fileHandle)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = @"Export has not begun (try calling -[appendLocations:error:] first).";
    goto LABEL_5;
  }

  if (self->_isFinished)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = @"Export has already finished.";
LABEL_5:
    [v4 hk_assignError:a3 code:100 description:v5];
    return 0;
  }

  v7 = [(HKGPXExporter *)self _appendString:@"    </trkseg>\n  </trk>\n</gpx>" error:a3];
  [(NSFileHandle *)self->_fileHandle closeFile];
  self->_isFinished = 1;
  return v7;
}

+ (id)fileNameForRoute:(id)a3
{
  v3 = [HKGPXExporter _displayNameForRoute:a3];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@":" withString:@"."];

  v6 = [v5 lowercaseString];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.gpx", v6];

  return v7;
}

+ (id)_displayNameForRoute:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D868]];
  v7 = [v4 endDate];

  v8 = [v6 components:124 fromDate:v7];

  v9 = [v8 hour];
  v10 = @"am";
  if (v9 > 11)
  {
    v10 = @"pm";
  }

  v11 = v10;
  if ([v8 hour] && objc_msgSend(v8, "hour") != 12)
  {
    v12 = [v8 hour] % 12;
  }

  else
  {
    v12 = 12;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%02ld-%02ld %ld:%02ld%@", objc_msgSend(v8, "year"), objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), v12, objc_msgSend(v8, "minute"), v11];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Route %@", v13];

  return v14;
}

- (id)_trackpointEntryForLocation:(id)a3
{
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  [v4 altitude];
  v11 = v10;
  isoFormatter = self->_isoFormatter;
  v13 = [v4 timestamp];
  v14 = [(NSISO8601DateFormatter *)isoFormatter stringFromDate:v13];
  [v4 speed];
  v16 = v15;
  [v4 course];
  v18 = v17;
  [v4 horizontalAccuracy];
  v20 = v19;
  [v4 verticalAccuracy];
  v22 = v21;

  v23 = [v9 initWithFormat:@"      <trkpt lon=%f lat=%f><ele>%f</ele><time>%@</time><extensions><speed>%f</speed><course>%f</course><hAcc>%f</hAcc><vAcc>%f</vAcc></extensions></trkpt>\n", v8, v6, v11, v14, v16, v18, v20, v22];

  return v23;
}

- (BOOL)_appendGPXHeaderWithError:(id *)a3
{
  isoFormatter = self->_isoFormatter;
  v6 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v7 = [(NSISO8601DateFormatter *)isoFormatter stringFromDate:v6];

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [HKGPXExporter _displayNameForRoute:self->_route];
  v10 = [v8 initWithFormat:@"<?xml version=1.0 encoding=UTF-8?>\n<gpx version=1.1 creator=%@ xmlns=%@ xmlns:xsi=%@ xsi:schemaLocation=%@ %@>\n  <metadata>\n    <time>%@</time>\n  </metadata>\n  <trk>\n    <name>%@</name>\n    <trkseg>\n", @"Apple Health Export", @"http://www.topografix.com/GPX/1/1", @"http://www.w3.org/2001/XMLSchema-instance", @"http://www.topografix.com/GPX/1/1", @"http://www.topografix.com/GPX/1/1/gpx.xsd", v7, v9];

  LOBYTE(a3) = [(HKGPXExporter *)self _appendString:v10 error:a3];
  return a3;
}

- (BOOL)_appendString:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  LOBYTE(a4) = [(NSFileHandle *)self->_fileHandle writeData:v6 error:a4];

  return a4;
}

@end