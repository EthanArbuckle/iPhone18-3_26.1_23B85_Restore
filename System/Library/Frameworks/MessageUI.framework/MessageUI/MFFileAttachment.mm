@interface MFFileAttachment
- (BOOL)isEqual:(id)equal;
@end

@implementation MFFileAttachment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (v5)
      {
        attachmentContentIDURL = [(MFFileAttachment *)v5 attachmentContentIDURL];
        if ([attachmentContentIDURL isEqual:self->_attachmentContentIDURL])
        {
          attachmentName = [(MFFileAttachment *)v6 attachmentName];
          if ([attachmentName isEqual:self->_attachmentName])
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