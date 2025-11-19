@interface ClipDownloadVariantDelta
- (NSString)description;
@end

@implementation ClipDownloadVariantDelta

- (NSString)description
{
  previousExternalVersionID = @"<null>";
  assetURL = self->_assetURL;
  assetToken = self->_assetToken;
  if (!assetToken)
  {
    assetToken = @"<null>";
  }

  v9[0] = @"assetToken";
  v9[1] = @"assetURL";
  if (assetURL)
  {
    v5 = assetURL;
  }

  else
  {
    v5 = @"<null>";
  }

  v10[0] = assetToken;
  v10[1] = v5;
  v9[2] = @"md5";
  v9[3] = @"fromAssetToken";
  v11 = vbslq_s8(vceqzq_s64(*&self->_md5), vdupq_n_s64(@"<null>"), *&self->_md5);
  v9[4] = @"previousExternalVersionId";
  if (self->_previousExternalVersionID)
  {
    previousExternalVersionID = self->_previousExternalVersionID;
  }

  v12 = previousExternalVersionID;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  v7 = [v6 description];

  return v7;
}

@end