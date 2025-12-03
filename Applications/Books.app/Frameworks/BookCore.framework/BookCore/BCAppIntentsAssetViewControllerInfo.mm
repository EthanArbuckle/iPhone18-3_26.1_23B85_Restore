@interface BCAppIntentsAssetViewControllerInfo
- (BCAppIntentsAssetViewControllerInfo)initWithAssetID:(id)d title:(id)title author:(id)author supportsTheming:(BOOL)theming;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BCAppIntentsAssetViewControllerInfo

- (BCAppIntentsAssetViewControllerInfo)initWithAssetID:(id)d title:(id)title author:(id)author supportsTheming:(BOOL)theming
{
  dCopy = d;
  titleCopy = title;
  authorCopy = author;
  v22.receiver = self;
  v22.super_class = BCAppIntentsAssetViewControllerInfo;
  v13 = [(BCAppIntentsAssetViewControllerInfo *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_supportsTheming = theming;
    v15 = [dCopy copy];
    assetID = v14->_assetID;
    v14->_assetID = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [authorCopy copy];
    author = v14->_author;
    v14->_author = v19;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7)
  {
    supportsTheming = [(BCAppIntentsAssetViewControllerInfo *)self supportsTheming];
    if (supportsTheming == [v7 supportsTheming])
    {
      assetID = [(BCAppIntentsAssetViewControllerInfo *)self assetID];
      assetID2 = [v7 assetID];
      if (assetID != assetID2)
      {
        assetID3 = [(BCAppIntentsAssetViewControllerInfo *)self assetID];
        assetID4 = [v7 assetID];
        if (![assetID3 isEqualToString:assetID4])
        {
          v9 = 0;
          goto LABEL_17;
        }
      }

      title = [(BCAppIntentsAssetViewControllerInfo *)self title];
      title2 = [v7 title];
      if (title != title2)
      {
        title3 = [(BCAppIntentsAssetViewControllerInfo *)self title];
        title4 = [v7 title];
        if (![title3 isEqualToString:title4])
        {
          v9 = 0;
          goto LABEL_15;
        }

        v27 = title4;
        v28 = title3;
      }

      author = [(BCAppIntentsAssetViewControllerInfo *)self author];
      author2 = [v7 author];
      v18 = author2;
      if (author == author2)
      {

        v9 = 1;
      }

      else
      {
        [(BCAppIntentsAssetViewControllerInfo *)self author];
        v19 = v26 = assetID3;
        [v7 author];
        v25 = title;
        v20 = assetID2;
        v21 = assetID;
        v23 = v22 = assetID4;
        v9 = [v19 isEqualToString:v23];

        assetID4 = v22;
        assetID = v21;
        assetID2 = v20;
        title = v25;

        assetID3 = v26;
      }

      title4 = v27;
      title3 = v28;
      if (title == title2)
      {
LABEL_16:

        if (assetID == assetID2)
        {
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:

        goto LABEL_18;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_supportsTheming;
    v7 = [(NSString *)self->_assetID copyWithZone:zone];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->_title copyWithZone:zone];
    v10 = v6[3];
    v6[3] = v9;

    v11 = [(NSString *)self->_author copyWithZone:zone];
    v12 = v6[4];
    v6[4] = v11;
  }

  return v6;
}

@end