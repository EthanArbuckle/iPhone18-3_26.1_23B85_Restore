@interface MFFileAttachment
- (BOOL)isEqual:(id)a3;
@end

@implementation MFFileAttachment

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5)
      {
        v7 = [(MFFileAttachment *)v5 attachmentContentIDURL];
        if ([v7 isEqual:self->_attachmentContentIDURL])
        {
          v8 = [(MFFileAttachment *)v6 attachmentName];
          if ([v8 isEqual:self->_attachmentName])
          {
            v9 = [(MFFileAttachment *)v6 attachmentType]== self->_attachmentType;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end