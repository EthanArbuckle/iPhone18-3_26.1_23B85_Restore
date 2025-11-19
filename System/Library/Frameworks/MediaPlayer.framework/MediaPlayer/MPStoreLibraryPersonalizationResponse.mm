@interface MPStoreLibraryPersonalizationResponse
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
- (void)dealloc;
- (void)setLibraryResponse:(id)a3;
@end

@implementation MPStoreLibraryPersonalizationResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MPModelResponse *)self results];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v8 = objc_alloc_init(MPLibraryAddStatusObserver);
  v9 = [MEMORY[0x1E695DFA8] set];
  v32 = 0;
  v33 = &v32;
  v34 = 0x4812000000;
  v35 = __Block_byref_object_copy__32562;
  v36 = __Block_byref_object_dispose__32563;
  v37 = "";
  v39 = 0;
  v40 = 0;
  __p = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __126__MPStoreLibraryPersonalizationResponse_newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex_responseHandler___block_invoke;
  v27[3] = &unk_1E767B968;
  v10 = v8;
  v28 = v10;
  v11 = v9;
  v29 = v11;
  v30 = &v41;
  v31 = &v32;
  [v7 enumerateItemsUsingBlock:v27];
  v12 = [v7 sectionAtIndex:a3];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 keepLocalEnableState];
  }

  else
  {
    v13 = 0;
  }

  if (v33[7] != v33[6])
  {
    v14 = objc_alloc_init(MPModelLibraryKeepLocalStatusRequestOperation);
    v15 = [MEMORY[0x1E69E4680] activeAccount];
    v16 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:v15];

    [(MPModelLibraryKeepLocalStatusRequestOperation *)v14 setLibraryView:v16];
    [(MPModelLibraryKeepLocalStatusRequestOperation *)v14 setEnableState:v13];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v42[3]];
    [(MPModelLibraryKeepLocalStatusRequestOperation *)v14 setRedownloadableItemCount:v17];

    v21 = MEMORY[0x1A58E1100]();
    mlcore::ItemPropertyPersistentID(v21);
    std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
  }

  v18 = MEMORY[0x1E696AAE0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __126__MPStoreLibraryPersonalizationResponse_newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex_responseHandler___block_invoke_2;
  v22[3] = &unk_1E767B990;
  v24 = v6;
  v25 = &v41;
  v26 = v13;
  v23 = v12;
  v19 = [v18 blockOperationWithBlock:v22];

  _Block_object_dispose(&v32, 8);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v41, 8);
  return v19;
}

void __126__MPStoreLibraryPersonalizationResponse_newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v38 flattenedGenericObject];
    v7 = [v6 anyObject];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = v38;
    v9 = [v6 type];
    switch(v9)
    {
      case 1:
        v7 = [v6 song];
        break;
      case 2:
        v7 = [v6 tvEpisode];
        break;
      case 3:
        v7 = [v6 movie];
        break;
      default:
        v8 = v6;
        goto LABEL_4;
    }
  }

  v8 = v7;

LABEL_4:
  v38 = v8;
LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = v38;
    v11 = [v10 storeAsset];
    v12 = [v11 isRedownloadable];

    v13 = [v10 identifiers];
    v14 = [v13 library];
    v15 = [v14 persistentID];

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_13:
    [*(a1 + 32) configureWithModelObject:?];
    v10 = v38;
    if (([*(a1 + 32) currentStatus] - 1) <= 2)
    {
      v16 = *(a1 + 40);
      v17 = [v38 identifiers];
      LOBYTE(v16) = [v16 containsObject:v17];

      if ((v16 & 1) == 0)
      {
        v18 = *(a1 + 40);
        v19 = [v38 identifiers];
        [v18 addObject:v19];

        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v10 = v38;
      if (v15)
      {
        v20 = *(*(a1 + 56) + 8);
        v22 = v20[7];
        v21 = v20[8];
        if (v22 >= v21)
        {
          v28 = v20[6];
          v29 = v22 - v28;
          v30 = (v22 - v28) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v32 = v21 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v33);
          }

          v34 = (v22 - v28) >> 3;
          v35 = (8 * v30);
          v36 = (8 * v30 - 8 * v34);
          *v35 = v15;
          v23 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = v20[6];
          v20[6] = v36;
          v20[7] = v23;
          v20[8] = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v22 = v15;
          v23 = v22 + 1;
        }

        v20[7] = v23;
        v10 = v38;
      }
    }

    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_37;
  }

  v10 = v38;
  v24 = [v10 storeAsset];
  v25 = [v24 isRedownloadable];

  v26 = [v10 identifiers];
  v27 = [v26 library];
  v15 = [v27 persistentID];

  if (v25)
  {
    goto LABEL_13;
  }

LABEL_37:
}

void __126__MPStoreLibraryPersonalizationResponse_newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex_responseHandler___block_invoke_2(void *a1)
{
  if (a1[5])
  {
    v2 = objc_alloc_init(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration);
    [(MPLibraryKeepLocalStatusObserverConfiguration *)v2 setEnableState:a1[7]];
    [(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v2 setRedownloadableItemCount:*(*(a1[6] + 8) + 24)];
    [(MPLibraryKeepLocalStatusObserverConfiguration *)v2 setIdentifyingModelObject:a1[4]];
    (*(a1[5] + 16))();
  }
}

- (void)setLibraryResponse:(id)a3
{
  v5 = a3;
  libraryResponse = self->_libraryResponse;
  v9 = v5;
  if (libraryResponse != v5)
  {
    if (libraryResponse)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:@"MPModelResponseDidInvalidateNotification" object:self->_libraryResponse];
    }

    objc_storeStrong(&self->_libraryResponse, a3);
    if (self->_libraryResponse)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__libraryResponseDidInvalidateNotification_ name:@"MPModelResponseDidInvalidateNotification" object:self->_libraryResponse];
    }
  }
}

- (void)dealloc
{
  if (self->_libraryResponse)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:@"MPModelResponseDidInvalidateNotification" object:self->_libraryResponse];
  }

  v4.receiver = self;
  v4.super_class = MPStoreLibraryPersonalizationResponse;
  [(MPStoreLibraryPersonalizationResponse *)&v4 dealloc];
}

@end