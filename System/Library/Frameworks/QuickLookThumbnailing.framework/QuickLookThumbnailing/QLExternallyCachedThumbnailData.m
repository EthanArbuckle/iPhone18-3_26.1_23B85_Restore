@interface QLExternallyCachedThumbnailData
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation QLExternallyCachedThumbnailData

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = QLExternallyCachedThumbnailData;
  v6 = [(QLExternallyCachedThumbnailData *)&v14 init];
  if (v6)
  {
    v7 = [v5 stringAtIndex:0];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v9 = [v5 dataAtIndex:1];
    versionIdentifier = v6->_versionIdentifier;
    v6->_versionIdentifier = v9;

    v11 = [v5 stringAtIndex:2];
    fileExtension = v6->_fileExtension;
    v6->_fileExtension = v11;

    v6->_size = [v5 unsignedIntegerAtIndex:3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      itemIdentifier = self->_itemIdentifier;
      v7 = [(QLExternallyCachedThumbnailData *)v5 itemIdentifier];
      if ([(NSString *)itemIdentifier isEqualToString:v7])
      {
        versionIdentifier = self->_versionIdentifier;
        v9 = [(QLExternallyCachedThumbnailData *)v5 versionIdentifier];
        if ([(NSData *)versionIdentifier isEqualToData:v9])
        {
          fileExtension = self->_fileExtension;
          v11 = [(QLExternallyCachedThumbnailData *)v5 fileExtension];
          v12 = [(NSString *)fileExtension isEqualToString:v11];
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