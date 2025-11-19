@interface HKCDADocument
- (BOOL)_compressDocumentDataForTransfer:(id *)a3;
- (BOOL)_decompressDocumentDataForDelivery:(id *)a3;
- (HKCDADocument)initWithCoder:(id)a3 omittedContentFlags:(int64_t)a4;
- (HKCDADocument)initWithDocumentData:(id)a3 compressedDocumentData:(id)a4 title:(id)a5 patientName:(id)a6 authorName:(id)a7 custodianName:(id)a8;
- (id)_descriptionFieldTitle:(id)a3 content:(id)a4 maxSize:(unint64_t)a5;
- (id)_validateConfiguration;
- (id)description;
- (void)encodeWithCoder:(id)a3 omittedContentFlags:(int64_t)a4;
@end

@implementation HKCDADocument

- (HKCDADocument)initWithDocumentData:(id)a3 compressedDocumentData:(id)a4 title:(id)a5 patientName:(id)a6 authorName:(id)a7 custodianName:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HKCDADocument;
  v18 = [(HKCDADocument *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_internalDocumentData, a3);
    objc_storeStrong(&v19->_compressedDocumentData, a4);
    v19->_compressionLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_title, a5);
    objc_storeStrong(&v19->_patientName, a6);
    objc_storeStrong(&v19->_authorName, a7);
    objc_storeStrong(&v19->_custodianName, a8);
  }

  return v19;
}

- (HKCDADocument)initWithCoder:(id)a3 omittedContentFlags:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v22.receiver = self;
  v22.super_class = HKCDADocument;
  v7 = [(HKCDADocument *)&v22 init];
  v8 = v7;
  if (v7)
  {
    internalDocumentData = v7->_internalDocumentData;
    v7->_internalDocumentData = 0;

    v10 = 0;
    if ((v4 & 2) == 0)
    {
      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"compressedDocumentData"];
    }

    compressedDocumentData = v8->_compressedDocumentData;
    v8->_compressedDocumentData = v10;

    v8->_compressionLock._os_unfair_lock_opaque = 0;
    v12 = objc_opt_class();
    v13 = [v6 decodeObjectOfClass:v12 forKey:@"title"];
    title = v8->_title;
    v8->_title = v13;

    v15 = [v6 decodeObjectOfClass:v12 forKey:@"patient_name"];
    patientName = v8->_patientName;
    v8->_patientName = v15;

    v17 = [v6 decodeObjectOfClass:v12 forKey:@"author_name"];
    authorName = v8->_authorName;
    v8->_authorName = v17;

    v19 = [v6 decodeObjectOfClass:v12 forKey:@"custodian_name"];
    custodianName = v8->_custodianName;
    v8->_custodianName = v19;
  }

  return v8;
}

- (id)_validateConfiguration
{
  os_unfair_lock_lock(&self->_compressionLock);
  if (self->_internalDocumentData)
  {
    os_unfair_lock_unlock(&self->_compressionLock);
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  compressedDocumentData = self->_compressedDocumentData;
  os_unfair_lock_unlock(&self->_compressionLock);
  if (compressedDocumentData)
  {
    goto LABEL_4;
  }

  v5 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"CDA document data must not be nil"];
LABEL_5:

  return v5;
}

- (BOOL)_compressDocumentDataForTransfer:(id *)a3
{
  os_unfair_lock_lock(&self->_compressionLock);
  if (self->_compressedDocumentData)
  {
    goto LABEL_2;
  }

  internalDocumentData = self->_internalDocumentData;
  if (!internalDocumentData)
  {
    v9 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Incorrect state of compression data for HKCDADocumentSample"];
    if (!v9)
    {
      goto LABEL_11;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v7 = [_HKCompressionEngine processDataWithFunction:0 algorithm:3 content:internalDocumentData progressBlock:0];
  compressedDocumentData = self->_compressedDocumentData;
  self->_compressedDocumentData = v7;

  if (!self->_compressedDocumentData)
  {
    v9 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to compress HKCDADocumentSample data"];
    if (!v9)
    {
LABEL_11:

      v5 = 0;
      goto LABEL_12;
    }

    if (!a3)
    {
LABEL_7:
      _HKLogDroppedError(v9);
      goto LABEL_11;
    }

LABEL_10:
    v10 = v9;
    *a3 = v9;
    goto LABEL_11;
  }

LABEL_2:
  v5 = 1;
LABEL_12:
  os_unfair_lock_unlock(&self->_compressionLock);
  return v5;
}

- (BOOL)_decompressDocumentDataForDelivery:(id *)a3
{
  os_unfair_lock_lock(&self->_compressionLock);
  if (!self->_internalDocumentData)
  {
    compressedDocumentData = self->_compressedDocumentData;
    if (compressedDocumentData)
    {
      v7 = [_HKCompressionEngine processDataWithFunction:1 algorithm:3 content:compressedDocumentData progressBlock:0];
      internalDocumentData = self->_internalDocumentData;
      self->_internalDocumentData = v7;

      if (self->_internalDocumentData)
      {
        v9 = self->_compressedDocumentData;
        self->_compressedDocumentData = 0;
        v5 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v10 = MEMORY[0x1E696ABC0];
      v11 = @"Failed to decompress HKCDADocumentSample data";
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = @"Incorrect state of decompression data for HKCDADocumentSample";
    }

    v12 = [v10 hk_error:100 format:v11];
    v9 = v12;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError(v12);
      }
    }

    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:
  os_unfair_lock_unlock(&self->_compressionLock);
  return v5;
}

- (void)encodeWithCoder:(id)a3 omittedContentFlags:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v9 = v7;
  if ((v4 & 2) == 0)
  {
    os_unfair_lock_lock(&self->_compressionLock);
    compressedDocumentData = self->_compressedDocumentData;
    if (!compressedDocumentData)
    {
      [(HKCDADocument *)a2 encodeWithCoder:&self->_compressedDocumentData omittedContentFlags:&v11];
      compressedDocumentData = v11;
    }

    [v9 encodeObject:compressedDocumentData forKey:{@"compressedDocumentData", v9}];
    os_unfair_lock_unlock(&self->_compressionLock);
    v7 = v9;
  }

  [v7 encodeObject:self->_title forKey:{@"title", v9}];
  [v10 encodeObject:self->_patientName forKey:@"patient_name"];
  [v10 encodeObject:self->_authorName forKey:@"author_name"];
  [v10 encodeObject:self->_custodianName forKey:@"custodian_name"];
}

- (id)_descriptionFieldTitle:(id)a3 content:(id)a4 maxSize:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 length];
  v10 = v9 - a5;
  if (v9 <= a5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v7, v8];
  }

  else
  {
    v11 = [v8 substringToIndex:a5];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@...(%ld more)", v7, v11, v10];
    v8 = v11;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_compressionLock);
  if (self->_internalDocumentData)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_internalDocumentData encoding:4];
    v5 = @"documentData";
    v6 = self;
    v7 = v4;
    v8 = 40;
  }

  else
  {
    compressedDocumentData = self->_compressedDocumentData;
    if (!compressedDocumentData)
    {
      goto LABEL_6;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%ld bytes)", -[NSData length](compressedDocumentData, "length")];
    v5 = @"compressedDocumentData";
    v6 = self;
    v7 = v4;
    v8 = 50;
  }

  v10 = [(HKCDADocument *)v6 _descriptionFieldTitle:v5 content:v7 maxSize:v8];
  [v3 addObject:v10];

LABEL_6:
  os_unfair_lock_unlock(&self->_compressionLock);
  v11 = [(HKCDADocument *)self _descriptionFieldTitle:@"title" content:self->_title maxSize:25];
  [v3 addObject:v11];

  v12 = [(HKCDADocument *)self _descriptionFieldTitle:@"patientName" content:self->_patientName maxSize:25];
  [v3 addObject:v12];

  v13 = [(HKCDADocument *)self _descriptionFieldTitle:@"authorName" content:self->_authorName maxSize:25];
  [v3 addObject:v13];

  v14 = [(HKCDADocument *)self _descriptionFieldTitle:@"custodianName" content:self->_custodianName maxSize:25];
  [v3 addObject:v14];

  v15 = [v3 componentsJoinedByString:@" "];

  return v15;
}

- (void)encodeWithCoder:(void *)a3 omittedContentFlags:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HKCDADocumentSample.m" lineNumber:564 description:@"HKCDADocumentSample object does not have compressed data for transfer."];

  *a4 = *a3;
}

@end