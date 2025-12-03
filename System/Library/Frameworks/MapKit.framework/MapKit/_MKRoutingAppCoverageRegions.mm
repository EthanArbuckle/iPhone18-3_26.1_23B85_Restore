@interface _MKRoutingAppCoverageRegions
- (_MKRoutingAppCoverageRegions)initWithContentsOfURL:(id)l error:(id *)error;
@end

@implementation _MKRoutingAppCoverageRegions

- (_MKRoutingAppCoverageRegions)initWithContentsOfURL:(id)l error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v16.receiver = self;
  v16.super_class = _MKRoutingAppCoverageRegions;
  v7 = [(_MKRoutingAppCoverageRegions *)&v16 init];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = MKErrorDomain;
    v17 = *MEMORY[0x1E695E618];
    v18[0] = @"Invalid URL";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v12 errorWithDomain:v13 code:1 userInfo:v14];

LABEL_7:
    error = 0;
    goto LABEL_8;
  }

  v8 = [_MKMultiPolygonGeoRegion alloc];
  path = [lCopy path];
  v10 = [(_MKMultiPolygonGeoRegion *)v8 initWithContentsOfFile:path error:error];
  regions = v7->_regions;
  v7->_regions = v10;

  if (!v7->_regions)
  {
    goto LABEL_7;
  }

  error = v7;
LABEL_8:

  return error;
}

@end