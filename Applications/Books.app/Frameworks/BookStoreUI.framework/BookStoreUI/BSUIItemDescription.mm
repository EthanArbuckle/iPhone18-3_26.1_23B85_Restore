@interface BSUIItemDescription
- (BOOL)bookCoverIsRightToLeft;
- (BSUIItemDescription)initWithAsset:(id)asset;
- (BSUIItemDescription)initWithCachedItemDescription:(id)description lazyNotes:(id)notes;
- (BSUIItemDescription)initWithDictionary:(id)dictionary;
- (BSUIItemDescription)initWithDragInfo:(id)info;
- (BSUIItemDescription)initWithItemDescription:(id)description;
- (BSUIItemDescription)initWithProfile:(id)profile;
- (id)description;
- (unint64_t)coverEffectStyle;
@end

@implementation BSUIItemDescription

- (BSUIItemDescription)initWithAsset:(id)asset
{
  assetCopy = asset;
  v39.receiver = self;
  v39.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v39 init];
  if (v5)
  {
    v6 = [assetCopy id];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    artworkURL = [assetCopy artworkURL];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = artworkURL;

    width = [assetCopy width];
    [width floatValue];
    if (v11 <= 0.0)
    {
      v5->_artworkAspect = 1.5;
    }

    else
    {
      height = [assetCopy height];
      [height floatValue];
      v14 = v13;
      width2 = [assetCopy width];
      [width2 floatValue];
      v5->_artworkAspect = (v14 / v16);
    }

    name = [assetCopy name];
    title = v5->_title;
    v5->_title = name;

    artistName = [assetCopy artistName];
    author = v5->_author;
    v5->_author = artistName;

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_55AA0;
    v37[3] = &unk_388D38;
    v21 = assetCopy;
    v38 = v21;
    v22 = [BCLazyValue objectSyncProducer:v37];
    lazyNotes = v5->_lazyNotes;
    v5->_lazyNotes = v22;

    [v21 averageRating];
    v5->_averageRating = v24;
    v5->_ratingCount = [v21 ratingCount];
    v25 = [v21 url];
    productURL = v5->_productURL;
    v5->_productURL = v25;

    if ([v21 isAudiobook])
    {
      v27 = @"audiobook";
    }

    else
    {
      v27 = @"epubBook";
    }

    objc_storeStrong(&v5->_kind, v27);
    v5->_isAudiobook = [v21 isAudiobook];
    bookSampleDownloadURL = [v21 bookSampleDownloadURL];
    sampleDownloadURL = v5->_sampleDownloadURL;
    v5->_sampleDownloadURL = bookSampleDownloadURL;

    priceFormatted = [v21 priceFormatted];
    priceString = v5->_priceString;
    v5->_priceString = priceFormatted;

    v32 = [BCMAssetWrapper actionTextForType:1 withAsset:v21];
    actionString = v5->_actionString;
    v5->_actionString = v32;

    buyParams = [v21 buyParams];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = buyParams;

    v5->_fileSize = [v21 fileSize];
  }

  return v5;
}

- (BSUIItemDescription)initWithProfile:(id)profile
{
  profileCopy = profile;
  adamId = [profileCopy adamId];
  v37.receiver = self;
  v37.super_class = BSUIItemDescription;
  v6 = [(BSUIItemDescription *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeID, adamId);
    v36 = 0x3FF8000000000000;
    v8 = [profileCopy artworkURLTemplateAspect:&v36];
    artworkURLTemplate = v7->_artworkURLTemplate;
    v7->_artworkURLTemplate = v8;

    *&v7->_artworkAspect = v36;
    title = [profileCopy title];
    title = v7->_title;
    v7->_title = title;

    author = [profileCopy author];
    author = v7->_author;
    v7->_author = author;

    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_55D28;
    v34 = &unk_388D38;
    v14 = profileCopy;
    v35 = v14;
    v15 = [BCLazyValue objectSyncProducer:&v31];
    lazyNotes = v7->_lazyNotes;
    v7->_lazyNotes = v15;

    [v14 averageRating];
    v7->_averageRating = v17;
    v7->_ratingCount = [v14 ratingCount];
    productURL = [v14 productURL];
    productURL = v7->_productURL;
    v7->_productURL = productURL;

    kind = [v14 kind];
    kind = v7->_kind;
    v7->_kind = kind;

    v7->_isAudiobook = [v14 isAudiobook];
    bookSampleDownloadURL = [v14 bookSampleDownloadURL];
    sampleDownloadURL = v7->_sampleDownloadURL;
    v7->_sampleDownloadURL = bookSampleDownloadURL;

    priceString = [v14 priceString];
    priceString = v7->_priceString;
    v7->_priceString = priceString;

    v26 = [v14 actionTextWithType:1];
    actionString = v7->_actionString;
    v7->_actionString = v26;

    buyParameters = [v14 buyParameters];
    buyParameters = v7->_buyParameters;
    v7->_buyParameters = buyParameters;

    v7->_fileSize = [v14 fileSize];
  }

  return v7;
}

- (BSUIItemDescription)initWithItemDescription:(id)description
{
  descriptionCopy = description;
  v31.receiver = self;
  v31.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v31 init];
  if (v5)
  {
    storeID = [descriptionCopy storeID];
    storeID = v5->_storeID;
    v5->_storeID = storeID;

    artworkURLTemplate = [descriptionCopy artworkURLTemplate];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = artworkURLTemplate;

    [descriptionCopy artworkAspect];
    v5->_artworkAspect = v10;
    title = [descriptionCopy title];
    title = v5->_title;
    v5->_title = title;

    author = [descriptionCopy author];
    author = v5->_author;
    v5->_author = author;

    lazyNotes = [descriptionCopy lazyNotes];
    lazyNotes = v5->_lazyNotes;
    v5->_lazyNotes = lazyNotes;

    [descriptionCopy averageRating];
    v5->_averageRating = v17;
    v5->_ratingCount = [descriptionCopy ratingCount];
    productURL = [descriptionCopy productURL];
    productURL = v5->_productURL;
    v5->_productURL = productURL;

    kind = [descriptionCopy kind];
    kind = v5->_kind;
    v5->_kind = kind;

    v5->_isAudiobook = [descriptionCopy isAudiobook];
    sampleDownloadURL = [descriptionCopy sampleDownloadURL];
    sampleDownloadURL = v5->_sampleDownloadURL;
    v5->_sampleDownloadURL = sampleDownloadURL;

    priceString = [descriptionCopy priceString];
    priceString = v5->_priceString;
    v5->_priceString = priceString;

    actionString = [descriptionCopy actionString];
    actionString = v5->_actionString;
    v5->_actionString = actionString;

    buyParameters = [descriptionCopy buyParameters];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = buyParameters;

    v5->_fileSize = [descriptionCopy fileSize];
  }

  return v5;
}

- (BSUIItemDescription)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"artworkAspect"];
    [v8 doubleValue];
    v5->_artworkAspect = v9;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"artworkURLTemplate"];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"author"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"averageRating"];
    [v16 doubleValue];
    v5->_averageRating = v17;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"ratingCount"];
    v5->_ratingCount = [v18 integerValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"productURL"];
    if (v19)
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"productURL"];
      v21 = [NSURL URLWithString:v20];
      productURL = v5->_productURL;
      v5->_productURL = v21;
    }

    else
    {
      v20 = v5->_productURL;
      v5->_productURL = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
    kind = v5->_kind;
    v5->_kind = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"sampleDownloadURL"];
    if (v25)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"sampleDownloadURL"];
      v27 = [NSURL URLWithString:v26];
      sampleDownloadURL = v5->_sampleDownloadURL;
      v5->_sampleDownloadURL = v27;
    }

    else
    {
      v26 = v5->_sampleDownloadURL;
      v5->_sampleDownloadURL = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"priceString"];
    priceString = v5->_priceString;
    v5->_priceString = v29;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"actionString"];
    actionString = v5->_actionString;
    v5->_actionString = v31;

    v33 = [dictionaryCopy objectForKeyedSubscript:@"buyParameters"];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v33;
  }

  return v5;
}

- (BSUIItemDescription)initWithDragInfo:(id)info
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [infoCopy objectForKeyedSubscript:@"storeID"];
    v7 = BUDynamicCast();
    storeID = v5->_storeID;
    v5->_storeID = v7;

    objc_opt_class();
    v9 = [infoCopy objectForKeyedSubscript:@"title"];
    v10 = BUDynamicCast();
    title = v5->_title;
    v5->_title = v10;

    objc_opt_class();
    v12 = [infoCopy objectForKeyedSubscript:@"author"];
    v13 = BUDynamicCast();
    author = v5->_author;
    v5->_author = v13;

    objc_opt_class();
    v15 = [infoCopy objectForKeyedSubscript:@"storeURL"];
    v16 = BUDynamicCast();

    if ([v16 length])
    {
      v17 = [NSURL URLWithString:v16];
      productURL = v5->_productURL;
      v5->_productURL = v17;
    }
  }

  return v5;
}

- (BSUIItemDescription)initWithCachedItemDescription:(id)description lazyNotes:(id)notes
{
  descriptionCopy = description;
  notesCopy = notes;
  v41.receiver = self;
  v41.super_class = BSUIItemDescription;
  v8 = [(BSUIItemDescription *)&v41 init];
  if (v8)
  {
    storeID = [descriptionCopy storeID];
    v10 = [storeID copy];
    storeID = v8->_storeID;
    v8->_storeID = v10;

    artworkAspect = [descriptionCopy artworkAspect];
    [artworkAspect doubleValue];
    v8->_artworkAspect = v13;

    artworkURLTemplate = [descriptionCopy artworkURLTemplate];
    artworkURLTemplate = v8->_artworkURLTemplate;
    v8->_artworkURLTemplate = artworkURLTemplate;

    objc_storeStrong(&v8->_lazyNotes, notes);
    title = [descriptionCopy title];
    title = v8->_title;
    v8->_title = title;

    author = [descriptionCopy author];
    author = v8->_author;
    v8->_author = author;

    averageRating = [descriptionCopy averageRating];
    [averageRating doubleValue];
    v8->_averageRating = v21;

    ratingCount = [descriptionCopy ratingCount];
    v8->_ratingCount = [ratingCount integerValue];

    productURL = [descriptionCopy productURL];
    if (productURL)
    {
      productURL2 = [descriptionCopy productURL];
      v25 = [NSURL URLWithString:productURL2];
      productURL = v8->_productURL;
      v8->_productURL = v25;
    }

    else
    {
      productURL2 = v8->_productURL;
      v8->_productURL = 0;
    }

    kind = [descriptionCopy kind];
    kind = v8->_kind;
    v8->_kind = kind;

    sampleDownloadURL = [descriptionCopy sampleDownloadURL];
    if (sampleDownloadURL)
    {
      sampleDownloadURL2 = [descriptionCopy sampleDownloadURL];
      v31 = [NSURL URLWithString:sampleDownloadURL2];
      sampleDownloadURL = v8->_sampleDownloadURL;
      v8->_sampleDownloadURL = v31;
    }

    else
    {
      sampleDownloadURL2 = v8->_sampleDownloadURL;
      v8->_sampleDownloadURL = 0;
    }

    priceString = [descriptionCopy priceString];
    priceString = v8->_priceString;
    v8->_priceString = priceString;

    actionString = [descriptionCopy actionString];
    actionString = v8->_actionString;
    v8->_actionString = actionString;

    buyParameters = [descriptionCopy buyParameters];
    buyParameters = v8->_buyParameters;
    v8->_buyParameters = buyParameters;

    fileSize = [descriptionCopy fileSize];
    v8->_fileSize = [fileSize integerValue];
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@: %p", v4, self];

  storeID = [(BSUIItemDescription *)self storeID];
  [v5 appendFormat:@"\n  storeID=%@ ", storeID];

  artworkURLTemplate = [(BSUIItemDescription *)self artworkURLTemplate];
  [v5 appendFormat:@"\n  artworkURLTemplate=%@ ", artworkURLTemplate];

  [(BSUIItemDescription *)self artworkAspect];
  *&v8 = v8;
  [v5 appendFormat:@"\n  artworkAspect=%f ", *&v8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v5 appendFormat:@"\n  _lazyNotes=<%@:%p> ", v10, self->_lazyNotes];

  title = [(BSUIItemDescription *)self title];
  [v5 appendFormat:@"\n  title=%@ ", title];

  author = [(BSUIItemDescription *)self author];
  [v5 appendFormat:@"\n  author=%@ ", author];

  [(BSUIItemDescription *)self averageRating];
  *&v13 = v13;
  [v5 appendFormat:@"\n  averageRating=%f ", *&v13];
  [v5 appendFormat:@"\n  ratingCount=%d ", -[BSUIItemDescription ratingCount](self, "ratingCount")];
  metrics = [(BSUIItemDescription *)self metrics];
  [v5 appendFormat:@"\n  metrics=%@ ", metrics];

  kind = [(BSUIItemDescription *)self kind];
  [v5 appendFormat:@"\n  kind=%@", kind];

  productURL = [(BSUIItemDescription *)self productURL];
  [v5 appendFormat:@"\n  productURL=%@", productURL];

  sampleDownloadURL = [(BSUIItemDescription *)self sampleDownloadURL];
  [v5 appendFormat:@"\n  sampleDownloadURL=%@", sampleDownloadURL];

  priceString = [(BSUIItemDescription *)self priceString];
  [v5 appendFormat:@"\n  priceString=%@", priceString];

  actionString = [(BSUIItemDescription *)self actionString];
  [v5 appendFormat:@"\n  actionString=%@", actionString];

  buyParameters = [(BSUIItemDescription *)self buyParameters];
  [v5 appendFormat:@"\n  buyParameters=%@", buyParameters];

  [v5 appendFormat:@">"];

  return v5;
}

- (unint64_t)coverEffectStyle
{
  if ([(BSUIItemDescription *)self bookCoverIsAudiobook])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)bookCoverIsRightToLeft
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = +[JSABridge sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_56A10;
  v4[3] = &unk_388D60;
  v4[4] = &v5;
  [v2 enqueueBlockPrefersSync:v4 file:@"BSUIItemDescription.m" line:264];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end