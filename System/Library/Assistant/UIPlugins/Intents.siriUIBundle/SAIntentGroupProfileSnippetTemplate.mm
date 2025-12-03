@interface SAIntentGroupProfileSnippetTemplate
- (unint64_t)alignmentValue;
- (unint64_t)imageStyleValue;
- (void)fetchUIImageForTraitCollection:(id)collection completion:(id)completion;
- (void)setAlignmentValue:(unint64_t)value;
- (void)setImageStyleValue:(unint64_t)value;
@end

@implementation SAIntentGroupProfileSnippetTemplate

- (unint64_t)alignmentValue
{
  alignment = [(SAIntentGroupProfileSnippetTemplate *)self alignment];
  v3 = [SiriIntentsTemplateModelEnumMapper templateAlignmentFromString:alignment];

  return v3;
}

- (void)setAlignmentValue:(unint64_t)value
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromTemplateAlignment:value];
  [(SAIntentGroupProfileSnippetTemplate *)self setAlignment:v4];
}

- (unint64_t)imageStyleValue
{
  imageStyle = [(SAIntentGroupProfileSnippetTemplate *)self imageStyle];
  v3 = [SiriIntentsTemplateModelEnumMapper imageStyleFromString:imageStyle];

  return v3;
}

- (void)setImageStyleValue:(unint64_t)value
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromImageStyle:value];
  [(SAIntentGroupProfileSnippetTemplate *)self setImageStyle:v4];
}

- (void)fetchUIImageForTraitCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  if (completionCopy)
  {
    imageURI = [(SAIntentGroupProfileSnippetTemplate *)self imageURI];
    v9 = +[INCache sharedCache];
    v10 = [v9 cacheableObjectForIdentifier:imageURI];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      _imageData = [v11 _imageData];
      _uri = [v11 _uri];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1508;
      v26[3] = &unk_C300;
      v14 = v11;
      v27 = v14;
      v28 = imageURI;
      v15 = completionCopy;
      v29 = v15;
      v16 = objc_retainBlock(v26);
      if (_imageData)
      {
        v17 = [UIImage imageWithData:_imageData];
        (*(v15 + 2))(v15, v17);
      }

      else if (_uri)
      {
        v18 = +[SiriUIURLSession sharedURLSession];
        [v18 cancelAllTasksForClient:self];

        v19 = +[SiriUIURLSession sharedURLSession];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_15DC;
        v24[3] = &unk_C328;
        v25 = v16;
        v20 = [v19 imageTaskWithHTTPGetRequest:_uri client:self completionHandler:v24];

        v17 = v25;
      }

      else
      {
        v21 = +[INUIImageServiceConnection sharedConnection];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_15EC;
        v22[3] = &unk_C350;
        v23 = v16;
        [v21 loadUIImageForINImage:v14 traitCollection:collectionCopy reply:v22];

        v17 = v23;
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

@end