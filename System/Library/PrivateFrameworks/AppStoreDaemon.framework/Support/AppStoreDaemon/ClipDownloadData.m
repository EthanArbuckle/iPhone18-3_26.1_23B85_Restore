@interface ClipDownloadData
- (id)description;
@end

@implementation ClipDownloadData

- (id)description
{
  v2 = vdupq_n_s64(@"<null>");
  v3 = vbslq_s8(vceqzq_s64(*&self->_appID), v2, *&self->_appID);
  v4 = vbslq_s8(vceqzq_s64(*&self->_artistName), v2, *&self->_artistName);
  v5 = vbslq_s8(vceqzq_s64(*&self->_externalVersionID), v2, *&self->_externalVersionID);
  v6 = vbslq_s8(vceqzq_s64(*&self->_ratingLabel), v2, *&self->_ratingLabel);
  v11[0] = @"appID";
  v11[1] = @"appName";
  v11[2] = @"artistName";
  v11[3] = @"bundleID";
  v12[0] = v3;
  v12[1] = v4;
  v11[4] = @"externalVersionID";
  v11[5] = @"parentBundleID";
  v11[6] = @"ratingLabel";
  v11[7] = @"ratingRank";
  v12[2] = v5;
  v12[3] = v6;
  v11[8] = @"variant";
  variant = self->_variant;
  if (!variant)
  {
    variant = @"<null>";
  }

  v13 = variant;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:9];
  v9 = [v8 description];

  return v9;
}

@end