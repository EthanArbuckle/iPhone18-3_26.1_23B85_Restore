@interface CALayer
+ (id)buddy_layerForPackageWithData:(id)a3 geometryFlipped:(BOOL)a4 scale:(double)a5;
@end

@implementation CALayer

+ (id)buddy_layerForPackageWithData:(id)a3 geometryFlipped:(BOOL)a4 scale:(double)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = a5;
  v19 = 0;
  v17 = 0;
  v7 = [CAPackage packageWithData:location[0] type:kCAPackageTypeArchive options:0 error:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v7;
  if (v19)
  {
    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, v19);
      _os_log_error_impl(&_mh_execute_header, v16, v15, "Failed to load package data with error %@", buf, 0xCu);
    }

    objc_storeStrong(&v16, 0);
  }

  v8 = v21;
  v9 = [v18 rootLayer];
  [v9 setGeometryFlipped:v8];

  CATransform3DMakeScale(&v14, 1.0 / v20, 1.0 / v20, 1.0);
  v10 = [v18 rootLayer];
  v13 = v14;
  [v10 setTransform:&v13];

  v11 = [v18 rootLayer];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v11;
}

@end