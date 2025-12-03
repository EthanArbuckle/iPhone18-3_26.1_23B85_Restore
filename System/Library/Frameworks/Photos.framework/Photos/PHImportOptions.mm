@interface PHImportOptions
- (PHImportOptions)init;
- (id)description;
- (void)setAllowDuplicates:(BOOL)duplicates;
- (void)setAllowUnsupported:(BOOL)unsupported;
- (void)setDeleteAfterImport:(BOOL)import;
- (void)setHideProgress:(BOOL)progress;
- (void)setOmitImportComplete:(BOOL)complete;
- (void)setShouldImportAsReferenced:(BOOL)referenced;
- (void)setSkipAlertWhenFinished:(BOOL)finished;
- (void)setSkipDiskSpaceCheck:(BOOL)check;
@end

@implementation PHImportOptions

- (void)setAllowUnsupported:(BOOL)unsupported
{
  if (unsupported)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFDFF | v3);
}

- (void)setOmitImportComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFEFF | v3);
}

- (void)setDeleteAfterImport:(BOOL)import
{
  if (import)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFBF | v3);
}

- (void)setSkipDiskSpaceCheck:(BOOL)check
{
  if (check)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFDF | v3);
}

- (void)setAllowDuplicates:(BOOL)duplicates
{
  if (duplicates)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFEF | v3);
}

- (void)setShouldImportAsReferenced:(BOOL)referenced
{
  if (referenced)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFF7 | v3);
}

- (void)setSkipAlertWhenFinished:(BOOL)finished
{
  if (finished)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_options_bits = (*&self->_options_bits & 0xFFFFFFFB | v3);
}

- (void)setHideProgress:(BOOL)progress
{
  if (progress)
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
  importedBy = [(PHImportOptions *)self importedBy];
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
  fileOperation = [(PHImportOptions *)self fileOperation];
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

  metadataAddMode = [(PHImportOptions *)self metadataAddMode];
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

  personId = [(PHImportOptions *)self personId];
  libraryScope = [(PHImportOptions *)self libraryScope];
  library = [(PHImportOptions *)self library];
  v16 = [v23 stringWithFormat:@"\npreserveFolderStructure: %@\nimportedBy: %d\nhideProgress: %@\nskipAlertWhenFinished: %@\nfileOperation: %d\nshouldImportAsReferenced: %@\nallowDuplicates: %@\nskipDiskSpaceCheck: %@\ndeleteAfterImport: %@\nmetadataAddMode: %d\nomitImportComplete: %@\nallowUnsupported: %@\npersonId: %@\nlibraryScope: %@\nlibrary: %@\n", v22, importedBy, v20, v19, fileOperation, v6, v7, v8, v9, metadataAddMode, v11, v12, personId, libraryScope, library];

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