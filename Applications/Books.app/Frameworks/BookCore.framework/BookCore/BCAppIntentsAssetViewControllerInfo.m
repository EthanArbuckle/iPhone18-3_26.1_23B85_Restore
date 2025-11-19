@interface BCAppIntentsAssetViewControllerInfo
- (BCAppIntentsAssetViewControllerInfo)initWithAssetID:(id)a3 title:(id)a4 author:(id)a5 supportsTheming:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BCAppIntentsAssetViewControllerInfo

- (BCAppIntentsAssetViewControllerInfo)initWithAssetID:(id)a3 title:(id)a4 author:(id)a5 supportsTheming:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = BCAppIntentsAssetViewControllerInfo;
  v13 = [(BCAppIntentsAssetViewControllerInfo *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_supportsTheming = a6;
    v15 = [v10 copy];
    assetID = v14->_assetID;
    v14->_assetID = v15;

    v17 = [v11 copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v12 copy];
    author = v14->_author;
    v14->_author = v19;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7)
  {
    v8 = [(BCAppIntentsAssetViewControllerInfo *)self supportsTheming];
    if (v8 == [v7 supportsTheming])
    {
      v10 = [(BCAppIntentsAssetViewControllerInfo *)self assetID];
      v11 = [v7 assetID];
      if (v10 != v11)
      {
        v3 = [(BCAppIntentsAssetViewControllerInfo *)self assetID];
        v4 = [v7 assetID];
        if (![v3 isEqualToString:v4])
        {
          v9 = 0;
          goto LABEL_17;
        }
      }

      v12 = [(BCAppIntentsAssetViewControllerInfo *)self title];
      v13 = [v7 title];
      if (v12 != v13)
      {
        v14 = [(BCAppIntentsAssetViewControllerInfo *)self title];
        v15 = [v7 title];
        if (![v14 isEqualToString:v15])
        {
          v9 = 0;
          goto LABEL_15;
        }

        v27 = v15;
        v28 = v14;
      }

      v16 = [(BCAppIntentsAssetViewControllerInfo *)self author];
      v17 = [v7 author];
      v18 = v17;
      if (v16 == v17)
      {

        v9 = 1;
      }

      else
      {
        [(BCAppIntentsAssetViewControllerInfo *)self author];
        v19 = v26 = v3;
        [v7 author];
        v25 = v12;
        v20 = v11;
        v21 = v10;
        v23 = v22 = v4;
        v9 = [v19 isEqualToString:v23];

        v4 = v22;
        v10 = v21;
        v11 = v20;
        v12 = v25;

        v3 = v26;
      }

      v15 = v27;
      v14 = v28;
      if (v12 == v13)
      {
LABEL_16:

        if (v10 == v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_supportsTheming;
    v7 = [(NSString *)self->_assetID copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->_title copyWithZone:a3];
    v10 = v6[3];
    v6[3] = v9;

    v11 = [(NSString *)self->_author copyWithZone:a3];
    v12 = v6[4];
    v6[4] = v11;
  }

  return v6;
}

@end