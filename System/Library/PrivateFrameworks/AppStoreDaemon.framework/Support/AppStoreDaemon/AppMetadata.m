@interface AppMetadata
- (AppMetadata)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AppMetadata

- (AppMetadata)init
{
  v3.receiver = self;
  v3.super_class = AppMetadata;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = sub_100382084(self);
  v5 = sub_1003820BC(self);
  v6 = sub_1003820F4(self);
  v7 = sub_10038212C(self);
  v8 = sub_1003821D8(self);
  v9 = [NSString stringWithFormat:@"%@ { bundleID: %@ itemID: %@ evid: %@ timestamp: %@ cohort: %@ }", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (![v8 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    goto LABEL_63;
  }

  v9 = sub_100382084(self);
  if (!v9)
  {
    v6 = sub_100382084(v8);
    if (!v6)
    {
      v47 = 0;
      goto LABEL_9;
    }
  }

  v3 = sub_100382084(self);
  v4 = sub_100382084(v8);
  if ([v3 isEqual:v4])
  {
    v47 = 1;
LABEL_9:
    v11 = sub_100382668(self);
    if (v11 || (sub_100382668(v8), (v44 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = sub_100382668(self);
      v46 = sub_100382668(v8);
      if (![v12 isEqual:?])
      {
        v10 = 0;
        goto LABEL_55;
      }

      v41 = v12;
      v45 = 1;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v13 = sub_1003820BC(self);
    if (v13 || (sub_1003820BC(v8), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = sub_1003820BC(self);
      v15 = sub_1003820BC(v8);
      v43 = v14;
      v16 = v14;
      v5 = v15;
      if (![v16 isEqual:v15])
      {
        v10 = 0;
LABEL_50:

LABEL_51:
        if (!v13)
        {
        }

        if (!v45)
        {
          goto LABEL_56;
        }

        v12 = v41;
LABEL_55:

LABEL_56:
        if (!v11)
        {
        }

        if (v47)
        {
        }

        goto LABEL_60;
      }

      v40 = 1;
    }

    else
    {
      v36 = 0;
      v40 = 0;
    }

    v42 = sub_1003820F4(self);
    if (v42 || (sub_1003820F4(v8), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v6;
      v18 = sub_1003820F4(self);
      v37 = sub_1003820F4(v8);
      v38 = v18;
      if (![v18 isEqual:v37])
      {
        v10 = 0;
        v6 = v17;
        goto LABEL_46;
      }

      v35 = 1;
      v6 = v17;
    }

    else
    {
      v32 = 0;
      v35 = 0;
    }

    v39 = sub_1003821D8(self);
    if (v39 || (sub_1003821D8(v8), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = sub_1003821D8(self);
      v33 = sub_1003821D8(v8);
      v34 = v19;
      if (![v19 isEqual:v33])
      {
        v10 = 0;
LABEL_42:

LABEL_43:
        if (!v39)
        {
        }

        if (!v35)
        {
LABEL_47:
          v25 = v42;
          if (!v42)
          {

            v25 = 0;
          }

          if (!v40)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

LABEL_46:

        goto LABEL_47;
      }

      v31 = v5;
      v20 = 1;
    }

    else
    {
      v31 = v5;
      v28 = 0;
      v20 = 0;
    }

    v21 = sub_10038212C(self);
    if (v21 || (sub_10038212C(v8), (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v20;
      v30 = v6;
      v22 = sub_10038212C(self);
      v23 = sub_10038212C(v8);
      v10 = [v22 isEqual:v23];

      if (v21)
      {

        if (!v29)
        {
          v6 = v30;
          v5 = v31;
          goto LABEL_43;
        }

        v6 = v30;
        v5 = v31;
        goto LABEL_42;
      }

      v6 = v30;
      LOBYTE(v20) = v29;
      v24 = v27;
    }

    else
    {
      v24 = 0;
      v10 = 1;
    }

    v5 = v31;
    if ((v20 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v10 = 0;
LABEL_60:
  if (!v9)
  {
  }

LABEL_63:
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = AppMetadata;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:a3];
}

@end