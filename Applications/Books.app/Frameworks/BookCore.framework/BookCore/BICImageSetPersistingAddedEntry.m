@interface BICImageSetPersistingAddedEntry
- (BICImageSetPersistingAddedEntry)initWithDescribedImage:(id)a3 imageEntry:(id)a4;
@end

@implementation BICImageSetPersistingAddedEntry

- (BICImageSetPersistingAddedEntry)initWithDescribedImage:(id)a3 imageEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = BICImageSetPersistingAddedEntry;
  v9 = [(BICImageSetPersistingAddedEntry *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageDescription, a3);
    v11 = [v8 entryLocation];
    entryLocation = v10->_entryLocation;
    v10->_entryLocation = v11;

    v13 = [v8 dataStoreInformation];
    storedData = v10->_storedData;
    v10->_storedData = v13;
  }

  return v10;
}

@end