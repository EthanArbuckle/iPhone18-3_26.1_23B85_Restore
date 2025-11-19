@interface CuratedCollectionRichTextParser
- (BOOL)_mergeRichTextCollectionDescription:(id)a3 itemDescriptions:(id)a4;
- (CuratedCollectionRichTextParser)initWithCollection:(id)a3 collectionItems:(id)a4 traitCollection:(id)a5;
- (id)_documentCSS;
- (id)_documentHTMLWithInnerBodyHTML:(id)a3;
- (void)_generatePlainTextDescriptions;
- (void)_generateRichTextDescriptionsWithCompletion:(id)a3;
- (void)_parseHTMLSnippet:(id)a3 group:(id)a4 completion:(id)a5;
- (void)parseRichTextDescriptionsWithCompletion:(id)a3;
@end

@implementation CuratedCollectionRichTextParser

- (void)_parseHTMLSnippet:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    dispatch_group_enter(v9);
    v11 = [(CuratedCollectionRichTextParser *)self _documentHTMLWithInnerBodyHTML:v8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100BE8C3C;
    v12[3] = &unk_10164D4B8;
    v13 = v9;
    v14 = v10;
    [NSAttributedString loadFromHTMLWithString:v11 options:&__NSDictionary0__struct completionHandler:v12];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (id)_documentHTMLWithInnerBodyHTML:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionRichTextParser *)self _documentCSS];
  v6 = [NSString stringWithFormat:@"<head><style type=text/css>%@</style></head><body>%@</body>", v5, v4];

  return v6;
}

- (id)_documentCSS
{
  css = self->_css;
  if (!css)
  {
    v4 = [(CuratedCollectionRichTextParser *)self _baseFont];
    [v4 pointSize];
    v6 = v5;

    v7 = [NSNumber numberWithDouble:v6];
    v8 = [v7 stringValue];
    v9 = [NSString stringWithFormat:@"html { font-family: -apple-system -webkit-text-size-adjust: 100%%; font-size: %@px; }", v8];;
    v10 = self->_css;
    self->_css = v9;

    css = self->_css;
  }

  return css;
}

- (void)parseRichTextDescriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didParseRichText)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v4;
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    self->_didParseRichText = 1;
    v6 = v4;
    [(CuratedCollectionRichTextParser *)self _generateRichTextDescriptionsWithCompletion:?];
  }

  v5 = v6;
LABEL_6:
}

- (BOOL)_mergeRichTextCollectionDescription:(id)a3 itemDescriptions:(id)a4
{
  collectionDescription = a3;
  if (!a3)
  {
    collectionDescription = self->_collectionDescription;
  }

  v8 = collectionDescription;
  v9 = self->_collectionDescription;
  v10 = a4;
  v11 = a3;
  if (v9 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSAttributedString *)v9 isEqual:v8];
  }

  v13 = self->_collectionDescription;
  self->_collectionDescription = v8;
  v14 = v8;

  [NSMutableDictionary dictionaryWithDictionary:self->_collectionItemDescriptions];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100BE9074;
  v23 = v22[3] = &unk_10164D490;
  v15 = v23;
  [v10 enumerateKeysAndObjectsUsingBlock:v22];

  collectionItemDescriptions = self->_collectionItemDescriptions;
  if (collectionItemDescriptions == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSDictionary *)collectionItemDescriptions isEqual:v15];
  }

  v18 = v12 & v17;
  v19 = [(NSDictionary *)v15 copy];
  v20 = self->_collectionItemDescriptions;
  self->_collectionItemDescriptions = v19;

  return v18 ^ 1;
}

- (void)_generateRichTextDescriptionsWithCompletion:(id)a3
{
  v22 = a3;
  v4 = sub_1007982D8();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_1007982D8();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ParseRichText", "", buf, 2u);
  }

  v23 = v5;

  group = dispatch_group_create();
  v24 = [(GEOPlaceCollection *)self->_collection collectionHTMLDescription];
  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = sub_100BE94D8;
  v45 = sub_100BE94E8;
  v46 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100BE94F0;
  v40[3] = &unk_10164D418;
  v40[4] = buf;
  [(CuratedCollectionRichTextParser *)self _parseHTMLSnippet:v24 group:group completion:v40];
  v8 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)self->_collectionItems count]];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_collectionItems;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = [MKMapItemIdentifier alloc];
        v14 = [v12 placeCollectionItem];
        v15 = [v14 itemIdentifier];
        v16 = [v13 initWithGEOMapItemIdentifier:v15];

        v17 = [v12 placeCollectionItem];
        v18 = [v17 itemHTMLDescription];

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100BE9500;
        v33[3] = &unk_10164D440;
        v34 = v8;
        v19 = v16;
        v35 = v19;
        [(CuratedCollectionRichTextParser *)self _parseHTMLSnippet:v18 group:group completion:v33];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BE9510;
  block[3] = &unk_10164D468;
  v31[1] = v23;
  objc_copyWeak(v31, &location);
  v30 = buf;
  v28 = v8;
  v29 = v22;
  v20 = v22;
  v21 = v8;
  dispatch_group_notify(group, &_dispatch_main_q, block);

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

- (void)_generatePlainTextDescriptions
{
  v2 = self;
  v43[0] = NSFontAttributeName;
  v3 = [(CuratedCollectionRichTextParser *)self _baseFont];
  v44[0] = v3;
  v43[1] = NSForegroundColorAttributeName;
  v4 = +[UIColor labelColor];
  v44[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];

  v6 = [(GEOPlaceCollection *)v2->_collection collectionDescription];
  v30 = v6;
  if (v6)
  {
    v7 = [[NSAttributedString alloc] initWithString:v6 attributes:v5];
    p_super = &v2->_collectionDescription->super;
    v2->_collectionDescription = v7;
  }

  else
  {
    p_super = sub_1007982D8();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v9 = [(GEOPlaceCollection *)v2->_collection collectionTitle];
      *buf = 138412290;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "Missing collectionDescription for: %@", buf, 0xCu);
    }
  }

  v10 = v5;

  v32 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)v2->_collectionItems count]];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v2->_collectionItems;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  v12 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  if (v11)
  {
    v13 = v11;
    v33 = *v35;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [MKMapItemIdentifier alloc];
        v17 = [v15 placeCollectionItem];
        v18 = [v17 itemIdentifier];
        v19 = [v16 initWithGEOMapItemIdentifier:v18];

        v20 = [v15 placeCollectionItem];
        v21 = [v20 itemDescription];

        if (v21)
        {
          v22 = [objc_alloc(v12[408]) initWithString:v21 attributes:v10];
          [v32 setObject:v22 forKeyedSubscript:v19];
        }

        else
        {
          v22 = sub_1007982D8();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v15 placeCollectionItem];
            v24 = [v23 itemIdentifier];
            [(GEOPlaceCollection *)v2->_collection collectionTitle];
            v25 = v10;
            v27 = v26 = v2;
            *buf = 138412546;
            v39 = v24;
            v40 = 2112;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Missing itemDescription for: %@ in Collection: %@", buf, 0x16u);

            v2 = v26;
            v10 = v25;
            v12 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          }
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v13);
  }

  v28 = [v32 copy];
  collectionItemDescriptions = v2->_collectionItemDescriptions;
  v2->_collectionItemDescriptions = v28;
}

- (CuratedCollectionRichTextParser)initWithCollection:(id)a3 collectionItems:(id)a4 traitCollection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CuratedCollectionRichTextParser;
  v12 = [(CuratedCollectionRichTextParser *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collection, a3);
    v14 = [v10 copy];
    collectionItems = v13->_collectionItems;
    v13->_collectionItems = v14;

    objc_storeStrong(&v13->_traitCollection, a5);
    [(CuratedCollectionRichTextParser *)v13 _generatePlainTextDescriptions];
  }

  return v13;
}

@end