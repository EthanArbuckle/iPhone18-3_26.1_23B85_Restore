@interface lib_IXAppInstallCoordinatorTag
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation lib_IXAppInstallCoordinatorTag

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> { coordinatorID = %@ bundleID = %@ }", v4, self, self->_coordinatorID, self->_bundleID];;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self)
      {
        bundleID = self->_bundleID;
        v7 = v5->_bundleID;
        if (bundleID == v7)
        {
          goto LABEL_8;
        }

        v8 = 0;
        if (!bundleID || !v7)
        {
LABEL_16:

          goto LABEL_17;
        }

        if ([(NSString *)bundleID isEqual:?])
        {
LABEL_8:
          coordinatorID = self->_coordinatorID;
          v10 = v5->_coordinatorID;
          if (coordinatorID == v10)
          {
            v8 = 1;
          }

          else
          {
            v8 = 0;
            if (coordinatorID && v10)
            {
              v8 = [(NSUUID *)coordinatorID isEqual:?];
            }
          }

          goto LABEL_16;
        }
      }

      v8 = 0;
      goto LABEL_16;
    }

    v8 = 0;
  }

LABEL_17:

  return v8;
}

@end