@interface BICImageSetPersistingAddedEntry
- (BICImageSetPersistingAddedEntry)initWithDescribedImage:(id)image imageEntry:(id)entry;
@end

@implementation BICImageSetPersistingAddedEntry

- (BICImageSetPersistingAddedEntry)initWithDescribedImage:(id)image imageEntry:(id)entry
{
  imageCopy = image;
  entryCopy = entry;
  v16.receiver = self;
  v16.super_class = BICImageSetPersistingAddedEntry;
  v9 = [(BICImageSetPersistingAddedEntry *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageDescription, image);
    entryLocation = [entryCopy entryLocation];
    entryLocation = v10->_entryLocation;
    v10->_entryLocation = entryLocation;

    dataStoreInformation = [entryCopy dataStoreInformation];
    storedData = v10->_storedData;
    v10->_storedData = dataStoreInformation;
  }

  return v10;
}

@end