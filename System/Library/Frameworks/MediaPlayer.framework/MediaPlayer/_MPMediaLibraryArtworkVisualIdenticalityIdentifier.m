@interface _MPMediaLibraryArtworkVisualIdenticalityIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_MPMediaLibraryArtworkVisualIdenticalityIdentifier)initWithArtworkType:(int64_t)a3 availableArtworkToken:(id)a4 fetchableArtworkToken:(id)a5;
- (id)stringRepresentation;
- (unint64_t)hash;
@end

@implementation _MPMediaLibraryArtworkVisualIdenticalityIdentifier

- (id)stringRepresentation
{
  v3 = [(_MPMediaLibraryArtworkVisualIdenticalityIdentifier *)self fetchableArtworkToken];
  if (![v3 length])
  {
    v4 = [(_MPMediaLibraryArtworkVisualIdenticalityIdentifier *)self availableArtworkToken];

    v3 = v4;
  }

  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_availableArtworkToken length])
      {
        availableArtworkToken = self->_availableArtworkToken;
      }

      else
      {
        availableArtworkToken = 0;
      }

      v8 = availableArtworkToken;
      if ([(NSString *)self->_fetchableArtworkToken length])
      {
        fetchableArtworkToken = self->_fetchableArtworkToken;
      }

      else
      {
        fetchableArtworkToken = 0;
      }

      v10 = fetchableArtworkToken;
      if ([v5[2] length])
      {
        v11 = v5[2];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      if ([v5[3] length])
      {
        v13 = v5[3];
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = v8;
      v16 = v15;
      if (v15 == v12)
      {
      }

      else
      {
        v17 = [(NSString *)v15 isEqual:v12];

        if (!v17)
        {
          v18 = v12;
          v19 = v18;
          if (v18 == v10)
          {
            v20 = 1;
          }

          else
          {
            v20 = [(NSString *)v18 isEqual:v10];
          }

          if (v14)
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

          v24 = v16;
          v25 = v24;
          if (v24 == v14)
          {
            v26 = 1;
          }

          else
          {
            v26 = [(NSString *)v24 isEqual:v14];
          }

          if (v10)
          {
            v27 = 0;
          }

          else
          {
            v27 = v26;
          }

          v7 = v27 | v23;
LABEL_37:

          goto LABEL_38;
        }
      }

      v21 = v10;
      v22 = v21;
      if (v21 == v14)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NSString *)v21 isEqual:v14];
      }

      goto LABEL_37;
    }

    v7 = 0;
  }

LABEL_38:

  return v7 & 1;
}

- (unint64_t)hash
{
  v81[18] = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  v5 = v3 ^ 0x6C7967656E657261;
  v6 = ((v3 ^ 0x736F6D6570736575) + (v4 ^ 0x646F72616E646F6DLL)) ^ __ROR8__(v4 ^ 0x646F72616E646F6DLL, 51);
  v7 = __ROR8__((v3 ^ 0x736F6D6570736575) + (v4 ^ 0x646F72616E646F6DLL), 32);
  artworkType = self->_artworkType;
  availableArtworkToken = self->_availableArtworkToken;
  v10 = v4 ^ 0x7465646279746573 ^ artworkType;
  v11 = v5 + v10;
  v12 = __ROR8__(v10, 48);
  v13 = (v11 ^ v12) + v7;
  v14 = v13 ^ __ROR8__(v11 ^ v12, 43);
  v15 = v13 ^ artworkType;
  v16 = v11 + v6;
  v17 = v16 ^ __ROR8__(v6, 47);
  v18 = __ROR8__(v16, 32);
  v66 = v17;
  v67 = v18;
  v65 = v13 ^ artworkType;
  v68 = v14;
  v69 = 0x800000000000000;
  v19 = 0x1000000000000000;
  if ([(NSString *)availableArtworkToken length])
  {
    v20 = [(NSString *)self->_availableArtworkToken hash];
    v21 = (v15 + v17) ^ __ROR8__(v17, 51);
    v22 = v18 + (v14 ^ v20);
    v23 = __ROR8__(v14 ^ v20, 48);
    v24 = (v22 ^ v23) + __ROR8__(v15 + v17, 32);
    v14 = v24 ^ __ROR8__(v22 ^ v23, 43);
    v17 = (v22 + v21) ^ __ROR8__(v21, 47);
    v18 = __ROR8__(v22 + v21, 32);
    v67 = v18;
    v68 = v14;
    v15 = v24 ^ v20;
    v65 = v24 ^ v20;
    v66 = v17;
    v69 = 0x1000000000000000;
    v19 = 0x1800000000000000;
  }

  if ([(NSString *)self->_fetchableArtworkToken length])
  {
    v25 = self->_fetchableArtworkToken;
    v26 = [(NSString *)v25 hash];
    v27 = (v15 + v17) ^ __ROR8__(v17, 51);
    v28 = v18 + (v14 ^ v26);
    v29 = __ROR8__(v14 ^ v26, 48);
    v30 = (v28 ^ v29) + __ROR8__(v15 + v17, 32);
    v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
    v32 = v28 + v27;
    v67 = __ROR8__(v32, 32);
    v68 = v31;
    v65 = v30 ^ v26;
    v66 = v32 ^ __ROR8__(v27, 47);
    v69 = v19;
  }

  memset(&v81[1], 0, 64);
  v81[0] = 1000;
  v33 = (v65 + v66) ^ __ROR8__(v66, 51);
  v34 = v67 + (v68 ^ v69);
  v35 = __ROR8__(v68 ^ v69, 48);
  v36 = (v34 ^ v35) + __ROR8__(v65 + v66, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = (v36 ^ v69) + v39;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = (__ROR8__(v38, 32) ^ 0xFFLL) + v37;
  v43 = __ROR8__(v37, 48);
  v44 = __ROR8__(v40, 32) + (v42 ^ v43);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v41 + v42;
  v47 = v46 ^ __ROR8__(v41, 47);
  v48 = v47 + v44;
  v49 = v48 ^ __ROR8__(v47, 51);
  v50 = __ROR8__(v46, 32) + v45;
  v51 = __ROR8__(v45, 48);
  v52 = __ROR8__(v48, 32) + (v50 ^ v51);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v49 + v50;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = v55 + v52;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = __ROR8__(v54, 32) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  v61 = v60 ^ __ROR8__(v58 ^ v59, 43);
  v62 = v57 + v58;
  v65 = v60;
  v67 = __ROR8__(v62, 32);
  v68 = v61;
  v63 = v62 ^ __ROR8__(v57, 47) ^ v60 ^ v67 ^ v61;
  v81[1] = v63;
  *&v81[9] = *v81;
  *&v81[11] = *&v81[2];
  *&v81[13] = *&v81[4];
  *&v81[15] = *&v81[6];
  v81[17] = 0;
  return v63;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  artworkType = self->_artworkType;
  if (artworkType > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7675868[artworkType];
  }

  [v6 appendFormat:@"; artworkType = %@", v8];
  if (self->_availableArtworkToken)
  {
    [v6 appendFormat:@"; availableArtworkToken = %@", self->_availableArtworkToken];
  }

  if (self->_fetchableArtworkToken)
  {
    [v6 appendFormat:@"; fetchableArtworkToken = %@", self->_fetchableArtworkToken];
  }

  [v6 appendString:@">"];

  return v6;
}

- (_MPMediaLibraryArtworkVisualIdenticalityIdentifier)initWithArtworkType:(int64_t)a3 availableArtworkToken:(id)a4 fetchableArtworkToken:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = _MPMediaLibraryArtworkVisualIdenticalityIdentifier;
  v10 = [(_MPMediaLibraryArtworkVisualIdenticalityIdentifier *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_artworkType = a3;
    v12 = [v8 copy];
    availableArtworkToken = v11->_availableArtworkToken;
    v11->_availableArtworkToken = v12;

    v14 = [v9 copy];
    fetchableArtworkToken = v11->_fetchableArtworkToken;
    v11->_fetchableArtworkToken = v14;
  }

  return v11;
}

@end