@interface CRLWPOpaqueFontID
- (BOOL)isEqual:(id)a3;
- (CRLWPOpaqueFontID)initWithFont:(id)a3;
- (CRLWPOpaqueFontID)initWithPostScriptName:(id)a3 familyName:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLWPOpaqueFontID

- (CRLWPOpaqueFontID)initWithPostScriptName:(id)a3 familyName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLWPOpaqueFontID;
  v9 = [(CRLWPOpaqueFontID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_desiredPostScriptName, a3);
    objc_storeStrong(&v10->_familyName, a4);
  }

  return v10;
}

- (CRLWPOpaqueFontID)initWithFont:(id)a3
{
  v4 = a3;
  if ([v4 isRequestedFont])
  {
    v5 = [v4 familyName];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 desiredPostScriptName];
  v7 = [(CRLWPOpaqueFontID *)self initWithPostScriptName:v6 familyName:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);

    if (v6)
    {
      v7 = [(CRLWPOpaqueFontID *)self familyName];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 familyName];
        if (v9)
        {
          v10 = v9;
          v11 = [(CRLWPOpaqueFontID *)self familyName];
          v12 = [v6 familyName];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }
      }

      v15 = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
      v16 = [v6 desiredPostScriptName];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
LABEL_10:
        v14 = 1;
LABEL_12:

        return v14;
      }
    }

    v14 = 0;
    goto LABEL_12;
  }

  return 1;
}

- (unint64_t)hash
{
  v3 = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
  v4 = [(CRLWPOpaqueFontID *)self familyName];
  v5 = [NSString stringWithFormat:@"%@%@", v3, v4];

  v6 = [v5 hash];
  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
  v6 = [(CRLWPOpaqueFontID *)self familyName];
  v7 = [NSString stringWithFormat:@"%@: <%p> Desired PostScript Name: %@ Family Name: %@", v4, self, v5, v6];;

  return v7;
}

@end