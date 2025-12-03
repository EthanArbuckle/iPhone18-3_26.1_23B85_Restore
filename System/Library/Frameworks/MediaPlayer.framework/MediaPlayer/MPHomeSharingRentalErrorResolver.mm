@interface MPHomeSharingRentalErrorResolver
- (BOOL)_errorIsFairPlayError:(id)error;
- (MPHomeSharingRentalErrorResolver)initWithItemID:(unint64_t)d homeSharingID:(unint64_t)iD rentalID:(unint64_t)rentalID accountID:(unint64_t)accountID;
- (void)dealloc;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
- (void)resolveError:(id)error;
@end

@implementation MPHomeSharingRentalErrorResolver

- (BOOL)_errorIsFairPlayError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  v5 = code + 49999;
  v6 = code + 12169;
  if (code == -11835)
  {
    domain = [errorCopy domain];
    v8 = [domain isEqualToString:*MEMORY[0x1E69874D8]];
  }

  else
  {
    v8 = 0;
  }

  if (v5 >> 6 < 0x7D || v6 <= 0x13)
  {
    domain2 = [errorCopy domain];
    v8 |= [domain2 isEqualToString:*MEMORY[0x1E696A768]];
  }

  return v8 & 1;
}

- (void)requestDidFinish:(id)finish
{
  v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] Rental checkout finished", v12, 2u);
  }

  [(SSRentalCheckoutRequest *)self->_request setDelegate:0];
  request = self->_request;
  self->_request = 0;

  v6 = +[MPHomeSharingRentalTracker sharedInstance];
  itemID = self->_itemID;
  uniqueIdentifier = [(MPHomeSharingML3DataProvider *)self->_dataProvider uniqueIdentifier];
  [v6 addRentalWithItemID:itemID databaseID:uniqueIdentifier];

  [(MPHomeSharingML3DataProvider *)self->_dataProvider setRentalPlaybackStartDateForItemID:self->_itemID];
  homeSharingLibrary = [(MPHomeSharingML3DataProvider *)self->_dataProvider homeSharingLibrary];
  v10 = [MEMORY[0x1E69A4680] requestWithDatabaseID:objc_msgSend(homeSharingLibrary itemID:{"databaseID"), self->_homeSharingID}];
  [homeSharingLibrary sendRequest:v10 withResponseHandler:&__block_literal_global_8];
  [(MPAVErrorResolver *)self sendDidResolveError:self->_error withResolution:2];
  error = self->_error;
  self->_error = 0;
}

void __53__MPHomeSharingRentalErrorResolver_requestDidFinish___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] iTunes set rental playback start date response: %{public}@", &v4, 0xCu);
  }
}

- (void)request:(id)request didFailWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = errorCopy;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] Rental checkout failed: %{public}@", &v14, 0xCu);
  }

  [(SSRentalCheckoutRequest *)self->_request setDelegate:0];
  request = self->_request;
  self->_request = 0;

  v8 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    itemID = self->_itemID;
    homeSharingID = self->_homeSharingID;
    v14 = 134218240;
    v15 = itemID;
    v16 = 2048;
    v17 = homeSharingID;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] Checking out rental on iTunes side after failure with item ID: %llu homesharing ID: %llu", &v14, 0x16u);
  }

  homeSharingLibrary = [(MPHomeSharingML3DataProvider *)self->_dataProvider homeSharingLibrary];
  v12 = [MEMORY[0x1E69A4658] requestWithDatabaseID:objc_msgSend(homeSharingLibrary itemID:{"databaseID"), self->_homeSharingID}];
  [homeSharingLibrary sendRequest:v12 withResponseHandler:&__block_literal_global_2893];
  [(MPAVErrorResolver *)self sendDidResolveError:self->_error withResolution:0];
  error = self->_error;
  self->_error = 0;
}

void __61__MPHomeSharingRentalErrorResolver_request_didFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] iTunes rental checkout response: %{public}@", &v4, 0xCu);
  }
}

- (void)resolveError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(MPHomeSharingRentalErrorResolver *)self _errorIsFairPlayError:errorCopy])
  {
    objc_storeStrong(&self->_error, error);
    v6 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      itemID = self->_itemID;
      homeSharingID = self->_homeSharingID;
      *buf = 134218240;
      v13 = itemID;
      v14 = 2048;
      v15 = homeSharingID;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] Checking in rental on iTunes side with item ID: %llu homesharing ID: %llu", buf, 0x16u);
    }

    homeSharingLibrary = [(MPHomeSharingML3DataProvider *)self->_dataProvider homeSharingLibrary];
    v10 = [MEMORY[0x1E69A4650] requestWithDatabaseID:objc_msgSend(homeSharingLibrary itemID:{"databaseID"), self->_homeSharingID}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__MPHomeSharingRentalErrorResolver_resolveError___block_invoke;
    v11[3] = &unk_1E7675EB0;
    v11[4] = self;
    [homeSharingLibrary sendRequest:v10 withResponseHandler:v11];
  }

  else
  {
    [(MPAVErrorResolver *)self sendDidResolveError:errorCopy withResolution:0];
  }
}

void __49__MPHomeSharingRentalErrorResolver_resolveError___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] iTunes rental check-in response: %{public}@", buf, 0xCu);
  }

  v5 = [v3 responseCode];
  v6 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 > 0x12B)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] iTunes rental check-in failed", buf, 2u);
    }

    v21 = *(a1 + 32);
    v20 = a1 + 32;
    [v21 sendDidResolveError:v21[4] withResolution:0];
    v22 = *(*v20 + 32);
    *(*v20 + 32) = 0;
  }

  else
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 56);
      v10 = *(v8 + 16);
      *buf = 134218240;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalErrorResolver] Checking out rental for rental ID: %llu, account ID: %llu", buf, 0x16u);
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v11 = getSSRentalCheckoutRequestClass_softClass;
    v26 = getSSRentalCheckoutRequestClass_softClass;
    if (!getSSRentalCheckoutRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSSRentalCheckoutRequestClass_block_invoke;
      v28 = &unk_1E7680410;
      v29 = &v23;
      __getSSRentalCheckoutRequestClass_block_invoke(buf);
      v11 = v24[3];
    }

    v12 = v11;
    _Block_object_dispose(&v23, 8);
    v13 = [v11 alloc];
    v15 = *(a1 + 32);
    v14 = a1 + 32;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(v15 + 16), v23}];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*v14 + 56)];
    v18 = [v13 initWithAccountIdentifier:v16 rentalKeyIdentifier:v17];
    v19 = *(*v14 + 64);
    *(*v14 + 64) = v18;

    [*(*v14 + 64) setDelegate:?];
    [*(*v14 + 64) start];
  }
}

- (void)dealloc
{
  [(SSRentalCheckoutRequest *)self->_request cancel];
  [(SSRentalCheckoutRequest *)self->_request setDelegate:0];
  v3.receiver = self;
  v3.super_class = MPHomeSharingRentalErrorResolver;
  [(MPHomeSharingRentalErrorResolver *)&v3 dealloc];
}

- (MPHomeSharingRentalErrorResolver)initWithItemID:(unint64_t)d homeSharingID:(unint64_t)iD rentalID:(unint64_t)rentalID accountID:(unint64_t)accountID
{
  v11.receiver = self;
  v11.super_class = MPHomeSharingRentalErrorResolver;
  result = [(MPHomeSharingRentalErrorResolver *)&v11 init];
  if (result)
  {
    result->_itemID = d;
    result->_homeSharingID = iD;
    result->_rentalID = rentalID;
    result->_accountID = accountID;
  }

  return result;
}

@end