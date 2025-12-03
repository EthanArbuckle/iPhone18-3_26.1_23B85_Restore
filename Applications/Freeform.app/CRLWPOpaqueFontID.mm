@interface CRLWPOpaqueFontID
- (BOOL)isEqual:(id)equal;
- (CRLWPOpaqueFontID)initWithFont:(id)font;
- (CRLWPOpaqueFontID)initWithPostScriptName:(id)name familyName:(id)familyName;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLWPOpaqueFontID

- (CRLWPOpaqueFontID)initWithPostScriptName:(id)name familyName:(id)familyName
{
  nameCopy = name;
  familyNameCopy = familyName;
  v12.receiver = self;
  v12.super_class = CRLWPOpaqueFontID;
  v9 = [(CRLWPOpaqueFontID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_desiredPostScriptName, name);
    objc_storeStrong(&v10->_familyName, familyName);
  }

  return v10;
}

- (CRLWPOpaqueFontID)initWithFont:(id)font
{
  fontCopy = font;
  if ([fontCopy isRequestedFont])
  {
    familyName = [fontCopy familyName];
  }

  else
  {
    familyName = 0;
  }

  desiredPostScriptName = [fontCopy desiredPostScriptName];
  v7 = [(CRLWPOpaqueFontID *)self initWithPostScriptName:desiredPostScriptName familyName:familyName];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);

    if (v6)
    {
      familyName = [(CRLWPOpaqueFontID *)self familyName];
      if (familyName)
      {
        v8 = familyName;
        familyName2 = [v6 familyName];
        if (familyName2)
        {
          v10 = familyName2;
          familyName3 = [(CRLWPOpaqueFontID *)self familyName];
          familyName4 = [v6 familyName];
          v13 = [familyName3 isEqual:familyName4];

          if (v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }
      }

      desiredPostScriptName = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
      desiredPostScriptName2 = [v6 desiredPostScriptName];
      v17 = [desiredPostScriptName isEqual:desiredPostScriptName2];

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
  desiredPostScriptName = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
  familyName = [(CRLWPOpaqueFontID *)self familyName];
  v5 = [NSString stringWithFormat:@"%@%@", desiredPostScriptName, familyName];

  v6 = [v5 hash];
  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  desiredPostScriptName = [(CRLWPOpaqueFontID *)self desiredPostScriptName];
  familyName = [(CRLWPOpaqueFontID *)self familyName];
  v7 = [NSString stringWithFormat:@"%@: <%p> Desired PostScript Name: %@ Family Name: %@", v4, self, desiredPostScriptName, familyName];;

  return v7;
}

@end