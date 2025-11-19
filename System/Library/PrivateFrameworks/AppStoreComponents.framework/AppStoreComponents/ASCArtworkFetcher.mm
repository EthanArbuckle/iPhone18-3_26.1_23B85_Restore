@interface ASCArtworkFetcher
+ (ASCArtworkFetcher)sharedFetcher;
- (ASCArtworkFetcher)initWithURLSession:(id)a3 scale:(double)a4;
- (id)URLWithContentsOfArtwork:(id)a3 preferredSize:(CGSize)a4;
- (id)dataWithContentsOfURL:(id)a3;
- (id)imageForContentsOfArtwork:(id)a3 withSize:(CGSize)a4;
- (id)imageWithContentsOfURL:(id)a3;
@end

@implementation ASCArtworkFetcher

+ (ASCArtworkFetcher)sharedFetcher
{
  if (sharedFetcher_onceToken != -1)
  {
    +[ASCArtworkFetcher sharedFetcher];
  }

  v3 = sharedFetcher_sharedFetcher;

  return v3;
}

void __34__ASCArtworkFetcher_sharedFetcher__block_invoke()
{
  v6 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v6 setRequestCachePolicy:2];
  v0 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [[ASCArtworkFetcher alloc] initWithURLSession:v0 scale:v3];
  v5 = sharedFetcher_sharedFetcher;
  sharedFetcher_sharedFetcher = v4;
}

- (ASCArtworkFetcher)initWithURLSession:(id)a3 scale:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = ASCArtworkFetcher;
  v8 = [(ASCArtworkFetcher *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_urlSession, a3);
    v9->_scale = a4;
    v10 = [[ASCTaskCoordinator alloc] initWithName:@"ASCArtworkFetcher"];
    fetchCoordinator = v9->_fetchCoordinator;
    v9->_fetchCoordinator = v10;
  }

  return v9;
}

- (id)URLWithContentsOfArtwork:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v29[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 preferredCrop];
  [v7 width];
  v10 = v9;
  [v7 height];
  v12 = ASCArtworkCropScaleSizeToFit(v8, width, height, v10, v11);
  v14 = v13;

  [(ASCArtworkFetcher *)self scale];
  v16 = v12 * v15;
  [(ASCArtworkFetcher *)self scale];
  v18 = v14 * v17;
  v28[0] = @"{w}";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  v20 = [v19 stringValue];
  v29[0] = v20;
  v28[1] = @"{h}";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  v22 = [v21 stringValue];
  v29[1] = v22;
  v28[2] = @"{c}";
  v23 = [v7 preferredCrop];
  v29[2] = v23;
  v28[3] = @"{f}";
  v24 = [v7 preferredFormat];
  v29[3] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v26 = [v7 makeURLWithSubstitutions:v25];

  return v26;
}

- (id)dataWithContentsOfURL:(id)a3
{
  v4 = MEMORY[0x277CEE600];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(ASCArtworkFetcher *)self urlSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__ASCArtworkFetcher_dataWithContentsOfURL___block_invoke;
  v12[3] = &unk_2781CB918;
  v8 = v6;
  v13 = v8;
  v9 = [v7 dataTaskWithURL:v5 completionHandler:v12];

  [v9 resume];
  v10 = v8;

  return v8;
}

void __43__ASCArtworkFetcher_dataWithContentsOfURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [v6 code];

      if (v8 == -999)
      {
        [*(a1 + 32) cancel];
        goto LABEL_7;
      }
    }

    else
    {
    }

    [*(a1 + 32) finishWithResult:v9 error:v6];
  }

LABEL_7:
}

- (id)imageWithContentsOfURL:(id)a3
{
  v4 = a3;
  [(ASCArtworkFetcher *)self scale];
  v6 = v5;
  v7 = [(ASCArtworkFetcher *)self dataWithContentsOfURL:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ASCArtworkFetcher_imageWithContentsOfURL___block_invoke;
  v11[3] = &unk_2781CB940;
  v13 = v6;
  v12 = v4;
  v8 = v4;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __44__ASCArtworkFetcher_imageWithContentsOfURL___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 scale:*(a1 + 40)];

  if (v5)
  {
    v6 = [MEMORY[0x277CEE630] promiseWithResult:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response for %@ could not be decoded", *(a1 + 32)];
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"ASCArtworkErrorDomain" code:2 userInfo:v9];

    v6 = [MEMORY[0x277CEE630] promiseWithError:v10];
  }

  return v6;
}

- (id)imageForContentsOfArtwork:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (width > 2.22044605e-16 && height > 2.22044605e-16)
  {
    v10 = [v7 embeddedImage];
    if (v10)
    {
      v14 = [MEMORY[0x277CEE600] promiseWithResult:v10];
      goto LABEL_13;
    }

    v13 = [(ASCArtworkFetcher *)self URLWithContentsOfArtwork:v8 preferredSize:width, height];
    if (v13)
    {
      v15 = [(ASCArtworkFetcher *)self fetchCoordinator];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__ASCArtworkFetcher_imageForContentsOfArtwork_withSize___block_invoke;
      v20[3] = &unk_2781CB968;
      v20[4] = self;
      v21 = v13;
      v14 = [v15 taskForKey:v21 withCreatorBlock:v20];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not derive URL for %@", v8];
      v16 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = [v16 errorWithDomain:@"ASCArtworkErrorDomain" code:1 userInfo:v17];

      v14 = [MEMORY[0x277CEE600] promiseWithError:v18];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid artwork size {%f, %f}", *&width, *&height];
    v11 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = [v11 errorWithDomain:@"ASCArtworkErrorDomain" code:0 userInfo:v12];

    v14 = [MEMORY[0x277CEE600] promiseWithError:v13];
  }

LABEL_13:

  return v14;
}

@end