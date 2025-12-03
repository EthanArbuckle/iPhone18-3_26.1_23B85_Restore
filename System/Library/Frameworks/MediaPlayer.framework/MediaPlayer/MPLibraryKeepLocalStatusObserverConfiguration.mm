@interface MPLibraryKeepLocalStatusObserverConfiguration
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation MPLibraryKeepLocalStatusObserverConfiguration

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v66 = __ROR8__(v14 + v13, 32);
  v68 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v63 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_identifyingModelObject;
  v19 = [(MPModelObject *)v18 hash];
  v20 = (v17 + v63) ^ __ROR8__(v63, 51);
  v21 = v66 + (v68 ^ v19);
  v22 = __ROR8__(v68 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v63, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v67 = __ROR8__(v25, 32);
  v69 = v24;
  v62 = v23 ^ v19;
  v64 = v25 ^ __ROR8__(v20, 47);

  enableState = self->_enableState;
  v27 = (v62 + v64) ^ __ROR8__(v64, 51);
  v28 = v67 + (v69 ^ enableState);
  v29 = __ROR8__(v69 ^ enableState, 48);
  v30 = (v28 ^ v29) + __ROR8__(v62 + v64, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v65 = v32 ^ __ROR8__(v27, 47);
  v33 = ((v30 ^ enableState) + v65) ^ __ROR8__(v65, 51);
  v34 = __ROR8__(v32, 32) + (v31 ^ 0x1800000000000000);
  v35 = __ROR8__(v31 ^ 0x1800000000000000, 48);
  v36 = (v34 ^ v35) + __ROR8__((v30 ^ enableState) + v65, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = (v36 ^ 0x1800000000000000) + v39;
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
  return (v57 + v58) ^ __ROR8__(v57, 47) ^ v60 ^ __ROR8__(v57 + v58, 32) ^ v60 ^ __ROR8__(v58 ^ v59, 43);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(MPLibraryKeepLocalStatusObserverConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      identifyingModelObject = v5->_identifyingModelObject;
      v7 = self->_identifyingModelObject;
      v8 = v7;
      if (v7 == identifyingModelObject)
      {
      }

      else
      {
        v9 = [(MPModelObject *)v7 isEqual:identifyingModelObject];

        if (!v9)
        {
          v10 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v10 = self->_enableState == v5->_enableState;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

@end