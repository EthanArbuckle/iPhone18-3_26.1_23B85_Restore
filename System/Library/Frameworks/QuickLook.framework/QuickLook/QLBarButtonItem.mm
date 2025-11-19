@interface QLBarButtonItem
- (BOOL)_qlIsEqual:(id)a3;
@end

@implementation QLBarButtonItem

- (BOOL)_qlIsEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(QLBarButtonItem *)self QLType];
      if (v6 != [(QLBarButtonItem *)v5 QLType])
      {
        goto LABEL_12;
      }

      if ([(QLBarButtonItem *)self QLType]== 3)
      {
        v7 = [(QLBarButtonItem *)self action];
        if (v7 != [(QLBarButtonItem *)v5 action])
        {
          goto LABEL_12;
        }
      }

      v8 = [(QLBarButtonItem *)self target];
      v9 = [(QLBarButtonItem *)v5 target];

      if (v8 == v9 && (v10 = [(QLBarButtonItem *)self systemItem], v10 == [(QLBarButtonItem *)v5 systemItem]))
      {
        v11 = [(QLBarButtonItem *)self title];
        v12 = [(QLBarButtonItem *)v5 title];
        if (v11 == v12)
        {
          v15 = 1;
        }

        else
        {
          v13 = [(QLBarButtonItem *)self title];
          v14 = [(QLBarButtonItem *)v5 title];
          v15 = [v13 isEqualToString:v14];
        }
      }

      else
      {
LABEL_12:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

@end