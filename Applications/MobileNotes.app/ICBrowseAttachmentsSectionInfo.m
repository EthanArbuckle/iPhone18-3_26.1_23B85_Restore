@interface ICBrowseAttachmentsSectionInfo
- (ICBrowseAttachmentsSectionInfo)initWithSectionInfo:(id)a3 name:(id)a4 additionalObjects:(id)a5 sortDescriptors:(id)a6;
- (NSString)indexTitle;
- (NSString)name;
@end

@implementation ICBrowseAttachmentsSectionInfo

- (ICBrowseAttachmentsSectionInfo)initWithSectionInfo:(id)a3 name:(id)a4 additionalObjects:(id)a5 sortDescriptors:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = ICBrowseAttachmentsSectionInfo;
  v15 = [(ICBrowseAttachmentsSectionInfo *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sectionInfo, a3);
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    objc_storeStrong(&v16->_additionalObjects, a5);
    v19 = [v11 objects];
    if (v19)
    {
      v20 = [v11 objects];
      v21 = [v13 allObjects];
      v22 = [v20 arrayByAddingObjectsFromArray:v21];
    }

    else
    {
      v22 = [v13 allObjects];
    }

    v23 = [v22 sortedArrayUsingDescriptors:v14];
    sortedObjects = v16->_sortedObjects;
    v16->_sortedObjects = v23;
  }

  return v16;
}

- (NSString)name
{
  v3 = [(NSFetchedResultsSectionInfo *)self->_sectionInfo name];
  name = v3;
  if (!v3)
  {
    if (self->_name)
    {
      name = self->_name;
    }

    else
    {
      name = &stru_100661CF0;
    }
  }

  v5 = name;

  return &name->isa;
}

- (NSString)indexTitle
{
  v2 = [(NSFetchedResultsSectionInfo *)self->_sectionInfo indexTitle];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_100661CF0;
  }

  v5 = v4;

  return &v4->isa;
}

@end