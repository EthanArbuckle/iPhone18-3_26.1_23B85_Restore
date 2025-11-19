@interface PHImportOptions
- (PHImportOptions)init;
- (id)description;
- (void)setAllowDuplicates:(BOOL)a3;
- (void)setAllowUnsupported:(BOOL)a3;
- (void)setDeleteAfterImport:(BOOL)a3;
- (void)setHideProgress:(BOOL)a3;
- (void)setOmitImportComplete:(BOOL)a3;
- (void)setShouldImportAsReferenced:(BOOL)a3;
- (void)setSkipAlertWhenFinished:(BOOL)a3;
- (void)setSkipDiskSpaceCheck:(BOOL)a3;
@end

@implementation PHImportOptions

- (void)setAllowUnsupported:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFDFF | v3);
}

- (void)setOmitImportComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFEFF | v3);
}

- (void)setDeleteAfterImport:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFBF | v3);
}

- (void)setSkipDiskSpaceCheck:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFDF | v3);
}

- (void)setAllowDuplicates:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFEF | v3);
}

- (void)setShouldImportAsReferenced:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFF7 | v3);
}

- (void)setSkipAlertWhenFinished:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFFB | v3);
}

- (void)setHideProgress:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFFD | v3);
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  if ([(PHImportOptions *)self preserveFolderStructure])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v22 = v3;
  v21 = [(PHImportOptions *)self importedBy];
  if ([(PHImportOptions *)self hideProgress])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v20 = v4;
  if ([(PHImportOptions *)self skipAlertWhenFinished])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v19 = v5;
  v18 = [(PHImportOptions *)self fileOperation];
  if ([(PHImportOptions *)self shouldImportAsReferenced])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(PHImportOptions *)self allowDuplicates])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(PHImportOptions *)self skipDiskSpaceCheck])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(PHImportOptions *)self deleteAfterImport])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(PHImportOptions *)self metadataAddMode];
  if ([(PHImportOptions *)self omitImportComplete])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(PHImportOptions *)self allowUnsupported])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [(PHImportOptions *)self personId];
  v14 = [(PHImportOptions *)self libraryScope];
  v15 = [(PHImportOptions *)self library];
  v16 = [v23 stringWithFormat:@"\npreserveFolderStructure: %@\nimportedBy: %d\nhideProgress: %@\nskipAlertWhenFinished: %@\nfileOperation: %d\nshouldImportAsReferenced: %@\nallowDuplicates: %@\nskipDiskSpaceCheck: %@\ndeleteAfterImport: %@\nmetadataAddMode: %d\nomitImportComplete: %@\nallowUnsupported: %@\npersonId: %@\nlibraryScope: %@\nlibrary: %@\n", v22, v21, v20, v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15];

  return v16;
}

- (PHImportOptions)init
{
  v7.receiver = self;
  v7.super_class = PHImportOptions;
  v2 = [(PHImportOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_options_bits &= 0xFFFFE37F;
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    sortDescriptor = v3->_sortDescriptor;
    v3->_sortDescriptor = v4;

    *(&v3->_options_bits + 2) = 4;
  }

  return v3;
}

@end