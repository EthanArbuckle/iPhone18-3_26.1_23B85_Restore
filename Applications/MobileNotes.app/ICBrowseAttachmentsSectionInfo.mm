@interface ICBrowseAttachmentsSectionInfo
- (ICBrowseAttachmentsSectionInfo)initWithSectionInfo:(id)info name:(id)name additionalObjects:(id)objects sortDescriptors:(id)descriptors;
- (NSString)indexTitle;
- (NSString)name;
@end

@implementation ICBrowseAttachmentsSectionInfo

- (ICBrowseAttachmentsSectionInfo)initWithSectionInfo:(id)info name:(id)name additionalObjects:(id)objects sortDescriptors:(id)descriptors
{
  infoCopy = info;
  nameCopy = name;
  objectsCopy = objects;
  descriptorsCopy = descriptors;
  v26.receiver = self;
  v26.super_class = ICBrowseAttachmentsSectionInfo;
  v15 = [(ICBrowseAttachmentsSectionInfo *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sectionInfo, info);
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    objc_storeStrong(&v16->_additionalObjects, objects);
    objects = [infoCopy objects];
    if (objects)
    {
      objects2 = [infoCopy objects];
      allObjects = [objectsCopy allObjects];
      allObjects2 = [objects2 arrayByAddingObjectsFromArray:allObjects];
    }

    else
    {
      allObjects2 = [objectsCopy allObjects];
    }

    v23 = [allObjects2 sortedArrayUsingDescriptors:descriptorsCopy];
    sortedObjects = v16->_sortedObjects;
    v16->_sortedObjects = v23;
  }

  return v16;
}

- (NSString)name
{
  name = [(NSFetchedResultsSectionInfo *)self->_sectionInfo name];
  name = name;
  if (!name)
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
  indexTitle = [(NSFetchedResultsSectionInfo *)self->_sectionInfo indexTitle];
  v3 = indexTitle;
  if (indexTitle)
  {
    v4 = indexTitle;
  }

  else
  {
    v4 = &stru_100661CF0;
  }

  v5 = v4;

  return &v4->isa;
}

@end