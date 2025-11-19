@interface BSUIItemDescription
- (BOOL)bookCoverIsRightToLeft;
- (BSUIItemDescription)initWithAsset:(id)a3;
- (BSUIItemDescription)initWithCachedItemDescription:(id)a3 lazyNotes:(id)a4;
- (BSUIItemDescription)initWithDictionary:(id)a3;
- (BSUIItemDescription)initWithDragInfo:(id)a3;
- (BSUIItemDescription)initWithItemDescription:(id)a3;
- (BSUIItemDescription)initWithProfile:(id)a3;
- (id)description;
- (unint64_t)coverEffectStyle;
@end

@implementation BSUIItemDescription

- (BSUIItemDescription)initWithAsset:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v39 init];
  if (v5)
  {
    v6 = [v4 id];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [v4 artworkURL];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = v8;

    v10 = [v4 width];
    [v10 floatValue];
    if (v11 <= 0.0)
    {
      v5->_artworkAspect = 1.5;
    }

    else
    {
      v12 = [v4 height];
      [v12 floatValue];
      v14 = v13;
      v15 = [v4 width];
      [v15 floatValue];
      v5->_artworkAspect = (v14 / v16);
    }

    v17 = [v4 name];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 artistName];
    author = v5->_author;
    v5->_author = v19;

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_55AA0;
    v37[3] = &unk_388D38;
    v21 = v4;
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
    v28 = [v21 bookSampleDownloadURL];
    sampleDownloadURL = v5->_sampleDownloadURL;
    v5->_sampleDownloadURL = v28;

    v30 = [v21 priceFormatted];
    priceString = v5->_priceString;
    v5->_priceString = v30;

    v32 = [BCMAssetWrapper actionTextForType:1 withAsset:v21];
    actionString = v5->_actionString;
    v5->_actionString = v32;

    v34 = [v21 buyParams];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v34;

    v5->_fileSize = [v21 fileSize];
  }

  return v5;
}

- (BSUIItemDescription)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 adamId];
  v37.receiver = self;
  v37.super_class = BSUIItemDescription;
  v6 = [(BSUIItemDescription *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeID, v5);
    v36 = 0x3FF8000000000000;
    v8 = [v4 artworkURLTemplateAspect:&v36];
    artworkURLTemplate = v7->_artworkURLTemplate;
    v7->_artworkURLTemplate = v8;

    *&v7->_artworkAspect = v36;
    v10 = [v4 title];
    title = v7->_title;
    v7->_title = v10;

    v12 = [v4 author];
    author = v7->_author;
    v7->_author = v12;

    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_55D28;
    v34 = &unk_388D38;
    v14 = v4;
    v35 = v14;
    v15 = [BCLazyValue objectSyncProducer:&v31];
    lazyNotes = v7->_lazyNotes;
    v7->_lazyNotes = v15;

    [v14 averageRating];
    v7->_averageRating = v17;
    v7->_ratingCount = [v14 ratingCount];
    v18 = [v14 productURL];
    productURL = v7->_productURL;
    v7->_productURL = v18;

    v20 = [v14 kind];
    kind = v7->_kind;
    v7->_kind = v20;

    v7->_isAudiobook = [v14 isAudiobook];
    v22 = [v14 bookSampleDownloadURL];
    sampleDownloadURL = v7->_sampleDownloadURL;
    v7->_sampleDownloadURL = v22;

    v24 = [v14 priceString];
    priceString = v7->_priceString;
    v7->_priceString = v24;

    v26 = [v14 actionTextWithType:1];
    actionString = v7->_actionString;
    v7->_actionString = v26;

    v28 = [v14 buyParameters];
    buyParameters = v7->_buyParameters;
    v7->_buyParameters = v28;

    v7->_fileSize = [v14 fileSize];
  }

  return v7;
}

- (BSUIItemDescription)initWithItemDescription:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v31 init];
  if (v5)
  {
    v6 = [v4 storeID];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [v4 artworkURLTemplate];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = v8;

    [v4 artworkAspect];
    v5->_artworkAspect = v10;
    v11 = [v4 title];
    title = v5->_title;
    v5->_title = v11;

    v13 = [v4 author];
    author = v5->_author;
    v5->_author = v13;

    v15 = [v4 lazyNotes];
    lazyNotes = v5->_lazyNotes;
    v5->_lazyNotes = v15;

    [v4 averageRating];
    v5->_averageRating = v17;
    v5->_ratingCount = [v4 ratingCount];
    v18 = [v4 productURL];
    productURL = v5->_productURL;
    v5->_productURL = v18;

    v20 = [v4 kind];
    kind = v5->_kind;
    v5->_kind = v20;

    v5->_isAudiobook = [v4 isAudiobook];
    v22 = [v4 sampleDownloadURL];
    sampleDownloadURL = v5->_sampleDownloadURL;
    v5->_sampleDownloadURL = v22;

    v24 = [v4 priceString];
    priceString = v5->_priceString;
    v5->_priceString = v24;

    v26 = [v4 actionString];
    actionString = v5->_actionString;
    v5->_actionString = v26;

    v28 = [v4 buyParameters];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v28;

    v5->_fileSize = [v4 fileSize];
  }

  return v5;
}

- (BSUIItemDescription)initWithDictionary:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [v4 objectForKeyedSubscript:@"artworkAspect"];
    [v8 doubleValue];
    v5->_artworkAspect = v9;

    v10 = [v4 objectForKeyedSubscript:@"artworkURLTemplate"];
    artworkURLTemplate = v5->_artworkURLTemplate;
    v5->_artworkURLTemplate = v10;

    v12 = [v4 objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [v4 objectForKeyedSubscript:@"author"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [v4 objectForKeyedSubscript:@"averageRating"];
    [v16 doubleValue];
    v5->_averageRating = v17;

    v18 = [v4 objectForKeyedSubscript:@"ratingCount"];
    v5->_ratingCount = [v18 integerValue];

    v19 = [v4 objectForKeyedSubscript:@"productURL"];
    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"productURL"];
      v21 = [NSURL URLWithString:v20];
      productURL = v5->_productURL;
      v5->_productURL = v21;
    }

    else
    {
      v20 = v5->_productURL;
      v5->_productURL = 0;
    }

    v23 = [v4 objectForKeyedSubscript:@"kind"];
    kind = v5->_kind;
    v5->_kind = v23;

    v25 = [v4 objectForKeyedSubscript:@"sampleDownloadURL"];
    if (v25)
    {
      v26 = [v4 objectForKeyedSubscript:@"sampleDownloadURL"];
      v27 = [NSURL URLWithString:v26];
      sampleDownloadURL = v5->_sampleDownloadURL;
      v5->_sampleDownloadURL = v27;
    }

    else
    {
      v26 = v5->_sampleDownloadURL;
      v5->_sampleDownloadURL = 0;
    }

    v29 = [v4 objectForKeyedSubscript:@"priceString"];
    priceString = v5->_priceString;
    v5->_priceString = v29;

    v31 = [v4 objectForKeyedSubscript:@"actionString"];
    actionString = v5->_actionString;
    v5->_actionString = v31;

    v33 = [v4 objectForKeyedSubscript:@"buyParameters"];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v33;
  }

  return v5;
}

- (BSUIItemDescription)initWithDragInfo:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BSUIItemDescription;
  v5 = [(BSUIItemDescription *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"storeID"];
    v7 = BUDynamicCast();
    storeID = v5->_storeID;
    v5->_storeID = v7;

    objc_opt_class();
    v9 = [v4 objectForKeyedSubscript:@"title"];
    v10 = BUDynamicCast();
    title = v5->_title;
    v5->_title = v10;

    objc_opt_class();
    v12 = [v4 objectForKeyedSubscript:@"author"];
    v13 = BUDynamicCast();
    author = v5->_author;
    v5->_author = v13;

    objc_opt_class();
    v15 = [v4 objectForKeyedSubscript:@"storeURL"];
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

- (BSUIItemDescription)initWithCachedItemDescription:(id)a3 lazyNotes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = BSUIItemDescription;
  v8 = [(BSUIItemDescription *)&v41 init];
  if (v8)
  {
    v9 = [v6 storeID];
    v10 = [v9 copy];
    storeID = v8->_storeID;
    v8->_storeID = v10;

    v12 = [v6 artworkAspect];
    [v12 doubleValue];
    v8->_artworkAspect = v13;

    v14 = [v6 artworkURLTemplate];
    artworkURLTemplate = v8->_artworkURLTemplate;
    v8->_artworkURLTemplate = v14;

    objc_storeStrong(&v8->_lazyNotes, a4);
    v16 = [v6 title];
    title = v8->_title;
    v8->_title = v16;

    v18 = [v6 author];
    author = v8->_author;
    v8->_author = v18;

    v20 = [v6 averageRating];
    [v20 doubleValue];
    v8->_averageRating = v21;

    v22 = [v6 ratingCount];
    v8->_ratingCount = [v22 integerValue];

    v23 = [v6 productURL];
    if (v23)
    {
      v24 = [v6 productURL];
      v25 = [NSURL URLWithString:v24];
      productURL = v8->_productURL;
      v8->_productURL = v25;
    }

    else
    {
      v24 = v8->_productURL;
      v8->_productURL = 0;
    }

    v27 = [v6 kind];
    kind = v8->_kind;
    v8->_kind = v27;

    v29 = [v6 sampleDownloadURL];
    if (v29)
    {
      v30 = [v6 sampleDownloadURL];
      v31 = [NSURL URLWithString:v30];
      sampleDownloadURL = v8->_sampleDownloadURL;
      v8->_sampleDownloadURL = v31;
    }

    else
    {
      v30 = v8->_sampleDownloadURL;
      v8->_sampleDownloadURL = 0;
    }

    v33 = [v6 priceString];
    priceString = v8->_priceString;
    v8->_priceString = v33;

    v35 = [v6 actionString];
    actionString = v8->_actionString;
    v8->_actionString = v35;

    v37 = [v6 buyParameters];
    buyParameters = v8->_buyParameters;
    v8->_buyParameters = v37;

    v39 = [v6 fileSize];
    v8->_fileSize = [v39 integerValue];
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@: %p", v4, self];

  v6 = [(BSUIItemDescription *)self storeID];
  [v5 appendFormat:@"\n  storeID=%@ ", v6];

  v7 = [(BSUIItemDescription *)self artworkURLTemplate];
  [v5 appendFormat:@"\n  artworkURLTemplate=%@ ", v7];

  [(BSUIItemDescription *)self artworkAspect];
  *&v8 = v8;
  [v5 appendFormat:@"\n  artworkAspect=%f ", *&v8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v5 appendFormat:@"\n  _lazyNotes=<%@:%p> ", v10, self->_lazyNotes];

  v11 = [(BSUIItemDescription *)self title];
  [v5 appendFormat:@"\n  title=%@ ", v11];

  v12 = [(BSUIItemDescription *)self author];
  [v5 appendFormat:@"\n  author=%@ ", v12];

  [(BSUIItemDescription *)self averageRating];
  *&v13 = v13;
  [v5 appendFormat:@"\n  averageRating=%f ", *&v13];
  [v5 appendFormat:@"\n  ratingCount=%d ", -[BSUIItemDescription ratingCount](self, "ratingCount")];
  v14 = [(BSUIItemDescription *)self metrics];
  [v5 appendFormat:@"\n  metrics=%@ ", v14];

  v15 = [(BSUIItemDescription *)self kind];
  [v5 appendFormat:@"\n  kind=%@", v15];

  v16 = [(BSUIItemDescription *)self productURL];
  [v5 appendFormat:@"\n  productURL=%@", v16];

  v17 = [(BSUIItemDescription *)self sampleDownloadURL];
  [v5 appendFormat:@"\n  sampleDownloadURL=%@", v17];

  v18 = [(BSUIItemDescription *)self priceString];
  [v5 appendFormat:@"\n  priceString=%@", v18];

  v19 = [(BSUIItemDescription *)self actionString];
  [v5 appendFormat:@"\n  actionString=%@", v19];

  v20 = [(BSUIItemDescription *)self buyParameters];
  [v5 appendFormat:@"\n  buyParameters=%@", v20];

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