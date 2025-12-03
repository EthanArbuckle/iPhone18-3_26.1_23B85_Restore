@interface QLExternallyCachedThumbnailData
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation QLExternallyCachedThumbnailData

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v14.receiver = self;
  v14.super_class = QLExternallyCachedThumbnailData;
  v6 = [(QLExternallyCachedThumbnailData *)&v14 init];
  if (v6)
  {
    v7 = [setCopy stringAtIndex:0];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v9 = [setCopy dataAtIndex:1];
    versionIdentifier = v6->_versionIdentifier;
    v6->_versionIdentifier = v9;

    v11 = [setCopy stringAtIndex:2];
    fileExtension = v6->_fileExtension;
    v6->_fileExtension = v11;

    v6->_size = [setCopy unsignedIntegerAtIndex:3];
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@:%p id:%@ vi:%@ fe: %@>", v5, self, self->_itemIdentifier, self->_versionIdentifier, self->_fileExtension];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      itemIdentifier = self->_itemIdentifier;
      itemIdentifier = [(QLExternallyCachedThumbnailData *)v5 itemIdentifier];
      if ([(NSString *)itemIdentifier isEqualToString:itemIdentifier])
      {
        versionIdentifier = self->_versionIdentifier;
        versionIdentifier = [(QLExternallyCachedThumbnailData *)v5 versionIdentifier];
        if ([(NSData *)versionIdentifier isEqualToData:versionIdentifier])
        {
          fileExtension = self->_fileExtension;
          fileExtension = [(QLExternallyCachedThumbnailData *)v5 fileExtension];
          v12 = [(NSString *)fileExtension isEqualToString:fileExtension];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end