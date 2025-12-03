@interface PHPhotoLibraryAppPrivateData
- (PHPhotoLibrary)photoLibrary;
- (PHPhotoLibraryAppPrivateData)initWithLibrary:(id)library;
- (id)debugDescription;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKeyPath:(id)path;
- (void)setValuesForKeysWithDictionary:(id)dictionary;
@end

@implementation PHPhotoLibraryAppPrivateData

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)setValuesForKeysWithDictionary:(id)dictionary
{
  v7 = 0;
  v4 = [(PHPhotoLibraryAppPrivateData *)self setValuesForKeysWithDictionary:dictionary error:&v7];
  v5 = v7;
  if (!v4)
  {
    photoLibrary = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [photoLibrary appPrivateDataWriteFailedWithError:v5];
  }
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  v8 = 0;
  v5 = [(PHPhotoLibraryAppPrivateData *)self setValue:value forKeyPath:path error:&v8];
  v6 = v8;
  if (!v5)
  {
    photoLibrary = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [photoLibrary appPrivateDataWriteFailedWithError:v6];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  v8 = 0;
  v5 = [(PHPhotoLibraryAppPrivateData *)self setValue:value forKey:key error:&v8];
  v6 = v8;
  if (!v5)
  {
    photoLibrary = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [photoLibrary appPrivateDataWriteFailedWithError:v6];
  }
}

- (id)debugDescription
{
  impl = self->_impl;
  if (impl)
  {
    [(PLAppPrivateData *)impl description];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> (INVALIDATED)", objc_opt_class(), self];
  }
  v4 = ;

  return v4;
}

- (PHPhotoLibraryAppPrivateData)initWithLibrary:(id)library
{
  libraryCopy = library;
  v14.receiver = self;
  v14.super_class = PHPhotoLibraryAppPrivateData;
  v5 = [(PHPhotoLibraryAppPrivateData *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_photoLibrary, libraryCopy);
    v8 = MEMORY[0x1E69BF188];
    v9 = v7;
    photoLibraryURL = [libraryCopy photoLibraryURL];
    v11 = [v8 appPrivateDataForLibraryURL:photoLibraryURL];
    impl = v6->_impl;
    v6->_impl = v11;
  }

  return v6;
}

@end