void sub_10000396C(uint64_t a1)
{
  v1 = [*(a1 + 32) mapView];
  [v1 setUserTrackingMode:1];
}

void sub_100003AE4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}