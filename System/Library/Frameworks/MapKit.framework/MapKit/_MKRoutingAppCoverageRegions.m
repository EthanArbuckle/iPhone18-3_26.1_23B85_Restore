@interface _MKRoutingAppCoverageRegions
- (_MKRoutingAppCoverageRegions)initWithContentsOfURL:(id)a3 error:(id *)a4;
@end

@implementation _MKRoutingAppCoverageRegions

- (_MKRoutingAppCoverageRegions)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = _MKRoutingAppCoverageRegions;
  v7 = [(_MKRoutingAppCoverageRegions *)&v16 init];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (([v6 isFileURL] & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = MKErrorDomain;
    v17 = *MEMORY[0x1E695E618];
    v18[0] = @"Invalid URL";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v12 errorWithDomain:v13 code:1 userInfo:v14];

LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  v8 = [_MKMultiPolygonGeoRegion alloc];
  v9 = [v6 path];
  v10 = [(_MKMultiPolygonGeoRegion *)v8 initWithContentsOfFile:v9 error:a4];
  regions = v7->_regions;
  v7->_regions = v10;

  if (!v7->_regions)
  {
    goto LABEL_7;
  }

  a4 = v7;
LABEL_8:

  return a4;
}

@end