@interface QLBarButtonItem
- (BOOL)_qlIsEqual:(id)equal;
@end

@implementation QLBarButtonItem

- (BOOL)_qlIsEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      qLType = [(QLBarButtonItem *)self QLType];
      if (qLType != [(QLBarButtonItem *)v5 QLType])
      {
        goto LABEL_12;
      }

      if ([(QLBarButtonItem *)self QLType]== 3)
      {
        action = [(QLBarButtonItem *)self action];
        if (action != [(QLBarButtonItem *)v5 action])
        {
          goto LABEL_12;
        }
      }

      target = [(QLBarButtonItem *)self target];
      target2 = [(QLBarButtonItem *)v5 target];

      if (target == target2 && (v10 = [(QLBarButtonItem *)self systemItem], v10 == [(QLBarButtonItem *)v5 systemItem]))
      {
        title = [(QLBarButtonItem *)self title];
        title2 = [(QLBarButtonItem *)v5 title];
        if (title == title2)
        {
          v15 = 1;
        }

        else
        {
          title3 = [(QLBarButtonItem *)self title];
          title4 = [(QLBarButtonItem *)v5 title];
          v15 = [title3 isEqualToString:title4];
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