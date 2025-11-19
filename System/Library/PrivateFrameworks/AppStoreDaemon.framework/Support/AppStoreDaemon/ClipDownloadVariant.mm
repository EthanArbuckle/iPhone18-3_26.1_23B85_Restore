@interface ClipDownloadVariant
- (NSString)description;
@end

@implementation ClipDownloadVariant

- (NSString)description
{
  v11[0] = @"assetToken";
  v11[1] = @"assetURL";
  assetURL = self->_assetURL;
  assetToken = self->_assetToken;
  if (!assetToken)
  {
    assetToken = @"<null>";
  }

  if (!assetURL)
  {
    assetURL = @"<null>";
  }

  v12[0] = assetToken;
  v12[1] = assetURL;
  v11[2] = @"md5";
  v11[3] = @"variantDescriptors";
  md5 = self->_md5;
  variantDeltas = self->_variantDeltas;
  if (!md5)
  {
    md5 = @"<null>";
  }

  variantDescriptors = self->_variantDescriptors;
  if (!variantDescriptors)
  {
    variantDescriptors = @"<null>";
  }

  v12[2] = md5;
  v12[3] = variantDescriptors;
  v11[4] = @"variantDeltas";
  if (variantDeltas)
  {
    v7 = variantDeltas;
  }

  else
  {
    v7 = @"<null>";
  }

  v12[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = [v8 description];

  return v9;
}

@end