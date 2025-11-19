@interface PHPhotoLibraryAppPrivateData
- (PHPhotoLibrary)photoLibrary;
- (PHPhotoLibraryAppPrivateData)initWithLibrary:(id)a3;
- (id)debugDescription;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setValuesForKeysWithDictionary:(id)a3;
@end

@implementation PHPhotoLibraryAppPrivateData

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)setValuesForKeysWithDictionary:(id)a3
{
  v7 = 0;
  v4 = [(PHPhotoLibraryAppPrivateData *)self setValuesForKeysWithDictionary:a3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [v6 appPrivateDataWriteFailedWithError:v5];
  }
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v8 = 0;
  v5 = [(PHPhotoLibraryAppPrivateData *)self setValue:a3 forKeyPath:a4 error:&v8];
  v6 = v8;
  if (!v5)
  {
    v7 = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [v7 appPrivateDataWriteFailedWithError:v6];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v8 = 0;
  v5 = [(PHPhotoLibraryAppPrivateData *)self setValue:a3 forKey:a4 error:&v8];
  v6 = v8;
  if (!v5)
  {
    v7 = [(PHPhotoLibraryAppPrivateData *)self photoLibrary];
    [v7 appPrivateDataWriteFailedWithError:v6];
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

- (PHPhotoLibraryAppPrivateData)initWithLibrary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PHPhotoLibraryAppPrivateData;
  v5 = [(PHPhotoLibraryAppPrivateData *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_photoLibrary, v4);
    v8 = MEMORY[0x1E69BF188];
    v9 = v7;
    v10 = [v4 photoLibraryURL];
    v11 = [v8 appPrivateDataForLibraryURL:v10];
    impl = v6->_impl;
    v6->_impl = v11;
  }

  return v6;
}

@end