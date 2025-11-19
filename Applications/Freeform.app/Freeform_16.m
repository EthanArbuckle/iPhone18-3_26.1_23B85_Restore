void sub_1002FE024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE0AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE0F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE134(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FE178(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE1BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FE200(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FE244(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) allKeys];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v9)];
        [v2 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v11 = +[NSMutableArray array];
  v12 = [*(a1 + 40) allKeys];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1 + 40) objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * v18), v21}];
        [v11 addObject:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v2, v11);
  }
}

void sub_1002FE520(uint64_t a1)
{
  if ([*(a1 + 32) hasImportableImages])
  {
    *(*(a1 + 32) + 64) = 1;
  }

  else
  {
    v2 = +[CRLIngestionTypes supportedMovieTypes];
    v3 = +[CRLIngestionTypes supportedGenericFileTypes];
    v7 = [v2 arrayByAddingObjectsFromArray:v3];

    if (sub_1002BC924(0x2000000000000uLL))
    {
      v4 = +[CRLIngestionTypes supported3DFileTypes];
      v5 = [v7 arrayByAddingObjectsFromArray:v4];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }

    v8 = v6;
    *(*(a1 + 32) + 64) = [*(a1 + 32) p_containsAnyUTIFromList:v6];
  }
}

void sub_1002FE6C0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([CRLIngestionTypes isValidPlainTextUTI:*(*(&v7 + 1) + 8 * i), v7])
        {
          *(*(a1 + 32) + 80) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1002FE858(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CRLIngestionTypes supportedRichTextTypes];
  *(*(a1 + 32) + 96) = [v2 p_containsAnyUTIFromList:v3];
}

void sub_1002FEBDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [NSMutableAttributedString alloc];
    v21 = NSDocumentTypeDocumentAttribute;
    v22 = NSRTFDTextDocumentType;
    v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = 0;
    v9 = [v7 initWithURL:v5 options:v8 documentAttributes:0 error:&v20];
    v10 = v20;

    if (!v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101350234();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135025C(v11, v10);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101350354();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedRichTextStringWithHandler:]_block_invoke"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v10 domain];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 329, 0, "Error creating attributed string. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v16, v17, [v10 code], v10);
    }
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10135037C();
    }

    v18 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101350390(v18);
    }

    v9 = 0;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, v9, 0);
  }
}

void sub_1002FEE98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FEEDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FEF20(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FEF64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v19 = 0;
    v8 = [NSAttributedString objectWithItemProviderData:v5 typeIdentifier:v7 error:&v19];
    v9 = v19;
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101350444();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135046C(v10, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101350564();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedRichTextStringWithHandler:]_block_invoke"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v9 domain];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, v13, 341, 0, "Error creating attributed string. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v15, v16, [v9 code], v9);
    }
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10135058C();
    }

    v17 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013505A0(v17);
    }

    v8 = 0;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v8, 0);
  }
}

void sub_1002FF1A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FF1E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FF22C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FF4CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (qword_101AD5A08 != -1)
    {
      sub_101350654();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101350668(v8);
    }

    v9 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
    v16 = 0;
    v9 = [NSString crl_stringWithItemProviderData:v5 typeIdentifier:v10 error:&v16];
    v7 = v16;
    if (!v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135071C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101350744();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013507E8();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedTextStringWithHandler:]_block_invoke"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:377 isFatal:0 description:"Unable to make a string out of data with UTI %@", *(a1 + 32)];
    }

    if (v7)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101350810();
      }

      v14 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_101350838(v14);
      }
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v9, 0);
  }
}

void sub_1002FF720(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FF764(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FF7A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FF7EC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FF8B4(uint64_t a1)
{
  if ([*(a1 + 32) hasNativeTypes])
  {
    v2 = [*(*(a1 + 32) + 8) firstObject];
    v3 = [v2 teamData];
    if (v3)
    {
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
      v11 = objc_opt_class();
      v18 = 0;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v3 error:&v18];
      v13 = v18;
      v14 = sub_100013F00(v11, v12);

      if (!v14)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_1013508EC();
        }

        v15 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_101350914(v15);
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 144);
  *(v16 + 144) = v14;
}

void sub_1002FFA98(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002FFB5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = @"com.apple.freeform.CRLNativeMetadata";
  v4[1] = @"com.apple.freeform.CRLNativeData";
  v3 = [NSArray arrayWithObjects:v4 count:2];
  *(*(a1 + 32) + 112) = [v2 p_containsAnyUTIFromList:v3];
}

void sub_1002FFCD0(uint64_t a1)
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v2 = [*(*(a1 + 32) + 16) array];
    *(*(a1 + 32) + 128) = [_TtC8Freeform20CRLCLCopyPasteHelper containsSupportedCanvasObjectFromTypeIdentifiers:v2];
  }

  else
  {
    *(*(a1 + 32) + 128) = 0;
  }
}

void sub_1003001E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100300224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100300268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  if (v6)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101350B80();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101350B94(v8);
    }

    [v7 addObject:v6];
    v9 = 0;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, v5);
    if (v11)
    {
      v12 = [*(a1 + 32) p_shouldKeepHighlights];
      v13 = [CRLPasteboardController descriptionsForBoardItemsOnPasteboardObject:v11];
      v9 = [CRLPasteboardController providersForBoardItemsAndTextWithBoardItemFactory:*(a1 + 40) keepHighlights:v12 fromPasteboardObject:v11 descriptionsForBoardItems:v13 validGeometries:0];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101350C48();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101350C5C(v14);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101350D3C();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForNativeBoardItemsWithBoardItemFactory:loadHandler:]_block_invoke"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:552 isFatal:0 description:"Native object provided was not a pasteboard object! Got %{public}@", v19];

      v9 = 0;
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v9, v7);
  }
}

void sub_1003004EC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100300530(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100300574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003005B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003005FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100301848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100301860(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) = 1;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100301A94;
  v18[3] = &unk_101854BE8;
  v5 = v3;
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v19 = v5;
  v22 = v6;
  v23 = v7;
  v17 = *(a1 + 40);
  v8 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = *(a1 + 32);
  *&v11 = v16;
  *&v10 = v17;
  *(&v11 + 1) = v9;
  *(&v10 + 1) = v8;
  v20 = v10;
  v21 = v11;
  v12 = [v4 loadDataRepresentationForTypeIdentifier:v5 completionHandler:v18];
  if (v12)
  {
    [*(a1 + 64) addObject:v12];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101350E7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101350EA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101350F30();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:623 isFatal:0 description:"No progress provided for UTI %@", v5];
  }
}

void sub_100301A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v34 = 0;
    v8 = [NSString crl_stringWithItemProviderData:v5 typeIdentifier:v7 error:&v34];
    v9 = v34;
    if (v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101350F58();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101350F80();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135101C();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:586 isFatal:0 description:"expected nil value for '%{public}s'", "stringError"];
    }

    v13 = [CRLPasteboardController detectedImportableURLForPasteboardString:v8 canTrimWhitespace:1];
    if (v13)
    {
      v14 = [CRLURLBoardItemProvider alloc];
      v15 = [*(a1 + 40) suggestedName];
      v16 = [(CRLURLBoardItemProvider *)v14 initWithURL:v13 fallbackBoardItemProvider:0 isDetectedURL:0 suggestedName:v15];
    }

    else
    {
      if ([v8 length] > *(a1 + 80))
      {
        v16 = [[CRLBoardItemProviderFactory alloc] initWithBoardItemFactory:*(a1 + 48)];
        v18 = [*(a1 + 56) defaultTextFileName];
        v19 = [*(a1 + 40) suggestedName];

        if (v19)
        {
          v20 = [*(a1 + 40) suggestedName];

          v18 = v20;
        }

        v33 = 0;
        v21 = [v8 crl_writeToFileUsingName:v18 error:&v33];
        v22 = v33;
        v23 = v22;
        v32 = v18;
        if (v22)
        {
          v30 = v22;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          v29 = v21;
          if (qword_101AD5A10 != -1)
          {
            sub_101351044();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10135106C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013510F8();
          }

          v24 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v24);
          }

          v25 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
          v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
          [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:605 isFatal:0 description:"Failed to create a temporary file for oversize string: %@", v6];

          v27 = v25;
          v23 = v30;
          v21 = v29;
        }

        else
        {
          v35 = v21;
          v28 = [NSArray arrayWithObjects:&v35 count:1];
          v31 = [(CRLBoardItemProviderFactory *)v16 providersForBoardItemsFromURLs:v28];

          v27 = v31;
          [*(*(*(a1 + 72) + 8) + 40) crl_addObjectsFromNonNilArray:v31];
        }

        goto LABEL_33;
      }

      v16 = [CRLTextBoxingBoardItemProvider objectWithItemProviderData:v5 typeIdentifier:*(a1 + 32) error:0];
    }

    [*(*(*(a1 + 72) + 8) + 40) crl_addNonNilObject:v16];
LABEL_33:

    goto LABEL_34;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_101351120();
  }

  v17 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_101351134(v17);
  }

LABEL_34:
  dispatch_group_leave(*(a1 + 64));
}

void sub_100301F78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100301FBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302000(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302088(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003020CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302110(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302154(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100302368;
  v13[3] = &unk_101854D18;
  v5 = v3;
  v6 = *(a1 + 64);
  v14 = v5;
  v16 = v6;
  v12 = *(a1 + 32);
  v7 = v12.i64[0];
  v15 = vextq_s8(v12, v12, 8uLL);
  v8 = [v4 loadDataRepresentationForTypeIdentifier:v5 completionHandler:v13];
  if (v8)
  {
    [*(a1 + 48) addObject:v8];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013511E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351210();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135129C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:648 isFatal:0 description:"No progress provided for UTI %@", v5];
  }
}

void sub_100302368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v21 = 0;
    v8 = [NSString crl_stringWithItemProviderData:v5 typeIdentifier:v7 error:&v21];
    v9 = v21;
    if (v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013512C4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013512EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101351388();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:634 isFatal:0 description:"expected nil value for '%{public}s'", "stringError"];
    }

    v13 = [NSURL URLWithString:v8];
    if (!v13)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013513B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013513D8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101351474();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]_block_invoke"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:637 isFatal:0 description:"invalid nil value for '%{public}s'", "url"];
    }

    v17 = [CRLURLBoardItemProvider alloc];
    v18 = [*(a1 + 40) suggestedName];
    v19 = [(CRLURLBoardItemProvider *)v17 initWithURL:v13 fallbackBoardItemProvider:0 isDetectedURL:0 suggestedName:v18];

    [*(*(*(a1 + 56) + 8) + 40) crl_addNonNilObject:v19];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10135149C();
    }

    v20 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013514B0(v20);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1003026E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030272C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003027B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003027F8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10030283C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302880(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003028C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v12 = 0;
    v10 = [v8 jsonBoardItemProvidersFrom:v5 withBoardItemFactory:v9 error:&v12];
    v7 = v12;
    [*(*(*(a1 + 56) + 8) + 40) crl_addObjectsFromNonNilArray:v10];
  }

  if (v7)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101351564();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10135158C(v11);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1003029B4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003029F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302A3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302A80(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) crl_addObjectsFromNonNilArray:a2];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_100302AC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302B50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if (!v5 || v6)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101351640();
      }

      v9 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_101351654(v5, v9, v7);
      }
    }

    else
    {
      v8 = [[CRLInfoImporterBoardItemProvider alloc] initWithURL:v5 type:*(a1 + 32) boardItemFactory:*(a1 + 40)];
      [*(*(*(a1 + 64) + 8) + 40) addObject:v8];
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_100302C38(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100302C7C(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  dispatch_group_leave(*(a1 + 32));
  v2 = [*(a1 + 40) cancellationHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) cancellationHandler];
    v3[2]();
  }
}

void sub_100302D20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302D64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100302DA8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100302DEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 40) + 8) + 40));
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1003030E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100303128(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030316C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  if (v6)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101351814();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101350B94(v8);
    }

    [v7 addObject:v6];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, v5);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 makeTextboxFromCopiedTextWith:*(a1 + 32)];
      v13 = [v12 textStorage];
      (*(*(a1 + 40) + 16))(*(a1 + 40), v13, [v11 isSmartCopyPaste]);
    }
  }
}

void sub_1003032A4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

id sub_100303548(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v9 = a3;
  if (v5)
  {
    if (!a2)
    {
LABEL_5:
      v7 = v5;
      goto LABEL_7;
    }

    while (1)
    {
      v6 = v9++;
      if (([v5 conformsToProtocol:*v6] & 1) == 0)
      {
        break;
      }

      if (!--a2)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id sub_1003035DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100303548(a1, a2, &a9);

  return v9;
}

id sub_10030361C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = sub_100303548(v10, a2, &a9);
  v12 = v11;
  if (v10 && !v11)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351828();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351850(v14, v10, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351948();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"id CRLCheckedProtocolCast(__strong id<NSObject>, NSUInteger, ...)"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m"];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:65 isFatal:0 description:"Unexpected object type %{public}@ in checked cast to multiple protocols", v19, &a9];
  }

  return v12;
}

void sub_1003037B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003037F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100303838(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v10 = a4;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (!a3)
    {
LABEL_6:
      v8 = v6;
      goto LABEL_8;
    }

    while (1)
    {
      v7 = v10++;
      if (([v6 conformsToProtocol:*v7] & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

id sub_1003038E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100303838(a1, a2, a3, &a9);

  return v9;
}

id sub_100303920(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = sub_100303838(v11, a2, a3, &a9);
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351970();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v23 = v15;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromClass(a2);
      *buf = 67110402;
      v28 = v14;
      v29 = 2082;
      v30 = "id CRLCheckedClassAndProtocolCast(__strong id<NSObject>, __unsafe_unretained Class, NSUInteger, ...)";
      v31 = 2082;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m";
      v33 = 1024;
      v34 = 106;
      v35 = 2114;
      v36 = v25;
      v37 = 2114;
      v38 = v26;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected object type %{public}@ in checked dynamic cast to class %{public}@ and 1 or more protocols", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351998();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"id CRLCheckedClassAndProtocolCast(__strong id<NSObject>, __unsafe_unretained Class, NSUInteger, ...)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLCast.m"];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromClass(a2);
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:106 isFatal:0 description:"Unexpected object type %{public}@ in checked dynamic cast to class %{public}@ and 1 or more protocols", v20, v21];
  }

  return v13;
}

void sub_100303BA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100303BEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100303C30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100303C74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100303D5C(id a1)
{
  v3 = 0x3F00A10021002ELL;
  v4 = 191;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:5];
  v2 = qword_101A34B40;
  qword_101A34B40 = v1;
}

void sub_100303E28(id a1)
{
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&unk_101464AD0 length:15];
  v2 = qword_101A34B50;
  qword_101A34B50 = v1;
}

void sub_100303EB8(id a1)
{
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&unk_101464AEE length:31];
  v2 = qword_101A34B60;
  qword_101A34B60 = v1;
}

void sub_100303F48(id a1)
{
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&unk_101464B2C length:19];
  v2 = qword_101A34B70;
  qword_101A34B70 = v1;
}

void sub_100303FD8(id a1)
{
  v3 = 538517528;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:2];
  v2 = qword_101A34B80;
  qword_101A34B80 = v1;
}

void sub_10030406C(id a1)
{
  v3 = 538443815;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:2];
  v2 = qword_101A34B90;
  qword_101A34B90 = v1;
}

void sub_100304100(id a1)
{
  v3 = 538509351;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:2];
  v2 = qword_101A34BA0;
  qword_101A34BA0 = v1;
}

void sub_100304194(id a1)
{
  v3 = 0x201D201C20192018;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:4];
  v2 = qword_101A34BB0;
  qword_101A34BB0 = v1;
}

void sub_10030425C(id a1)
{
  v1 = [NSCharacterSet characterSetWithRange:65024, 16];
  v2 = qword_101A34BC0;
  qword_101A34BC0 = v1;
}

void sub_1003042E8(id a1)
{
  v3 = 0x270022201D2019;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:4];
  v2 = qword_101A34BD0;
  qword_101A34BD0 = v1;
}

void sub_1003043B0(id a1)
{
  v3 = 0x270022201C2018;
  v1 = [NSCharacterSet crlwp_characterSetWithCharactersInArray:&v3 length:4];
  v2 = qword_101A34BE0;
  qword_101A34BE0 = v1;
}

id sub_100304448(id a1)
{
  v8 = 0xEFFFC00050004;
  v9 = 6;
  v1 = [NSString stringWithCharacters:&v8 length:5];
  v2 = [NSMutableCharacterSet characterSetWithCharactersInString:v1];
  v3 = objc_claimAutoreleasedReturnValue();
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  [v3 formUnionWithCharacterSet:v2];
  v5 = +[NSCharacterSet crlwp_allQuotesCharacterSetExcludingRight];
  [v3 formUnionWithCharacterSet:v5];

  v6 = [v3 copy];

  return v6;
}

id sub_10030459C(id a1)
{
  v9 = 0xEFFFC00050004;
  v10 = 6;
  v1 = [NSString stringWithCharacters:&v9 length:5];
  v2 = [NSMutableCharacterSet characterSetWithCharactersInString:v1];
  v3 = [NSMutableCharacterSet characterSetWithCharactersInString:@"]., :?'!%*-/}"]);;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  [v3 formUnionWithCharacterSet:v2];
  v5 = +[NSCharacterSet crlwp_allQuotesCharacterSetExcludingLeft];
  [v3 formUnionWithCharacterSet:v5];

  v6 = +[NSCharacterSet punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:v6];

  v7 = [v3 copy];

  return v7;
}

NSCharacterSet *__cdecl sub_100304710(id a1)
{
  v4 = xmmword_101464B66;
  v5 = 539492356;
  v1 = [NSString stringWithCharacters:&v4 length:10];
  v2 = [NSCharacterSet characterSetWithCharactersInString:v1];

  return v2;
}

void sub_100304CC4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) repForInfo:?];
  if ([CRLConnectionLineRep canConnectToRep:v5])
  {
    [*(a1 + 40) addObject:v6];
    if ([*(a1 + 40) count] >= 3)
    {
      *a3 = 1;
    }
  }
}

void sub_1003058D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100305914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003069D8(id a1)
{
  if (!qword_101A34BF0)
  {
    v1 = [NSSet setWithArray:&off_1018E1B60];
    v2 = qword_101A34BF0;
    qword_101A34BF0 = v1;
  }
}

void sub_1003070B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003070F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100308434(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v18 = sub_10011F31C(a4, a5, a8);
  v20 = sub_10011F328(a6, a7, v18, v19);
  v21 = sub_100404AD8(a1, a4, a5) * a10 / v20;
  *a2 = fmax(*a2, v21);
  result = fmin(*a3, v21);
  *a3 = result;
  return result;
}

void sub_10030A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10030A0A8(uint64_t a1)
{
  result = [*(a1 + 32) crlax_rangeOfLineFragmentAtCharIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

void sub_10030A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10030A364(uint64_t a1)
{
  result = [*(a1 + 32) wpSelectionClass];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10030A4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10030A4E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10030A500(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_crlaxWPSelectionClass")];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10030A8F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030A938(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10030ACD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10030ACF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRLImageProviderPool sharedPool];
  v5 = [v4 temporaryProviderForAsset:v3 shouldValidate:1];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(*(*(a1 + 40) + 8) + 40) isValid] && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isError") & 1) == 0)
  {
    v8 = objc_opt_class();
    v9 = sub_100014370(v8, *(*(*(a1 + 40) + 8) + 40));
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351DC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351DDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351E8C();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLImageFaceAnalyzer p_analyzeFaceRectsIfNeeded]_block_invoke"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFaceAnalyzer.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:87 isFatal:0 description:"invalid nil value for '%{public}s'", "bitmapProvider"];

    v12 = *(*(*(a1 + 48) + 8) + 40);
  }

  return [*(a1 + 32) p_analyzeFaceRectsWithProvider:v12];
}

void sub_10030AEF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030AF38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030B1BC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10030BC8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030BCD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030C048(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030C08C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030C22C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030C270(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030CB7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030CBC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030D000(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030D044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10030D268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

__n128 sub_10030D2A8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_10030D2B8(uint64_t a1, uint64_t a2)
{
  v19 = +[CRLBezierPath bezierPath];
  [v19 moveToPoint:{*(a1 + 64), *(a1 + 72)}];
  v4 = sub_10050D008(a2);
  [v19 relativeLineToPoint:{sub_10011F340(v4, v5, *(a1 + 80))}];
  v6 = [*(a1 + 32) clipPath:v19 onLayout:*(a1 + 40) outset:0 reversed:*(*(a1 + 48) + 8) + 24 isValid:*(a1 + 88)];
  v7 = v6;
  if (v6 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = v8[6];
    v10 = v8[7];
    v11 = v8[8];
    v12 = v8[9];
    [v6 point];
    v14 = sub_100120604(v9, v10, v11, v12, v13);
    v15 = *(*(a1 + 56) + 8);
    *(v15 + 48) = v14;
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 72) = v18;
  }
}

__n128 sub_10030D3EC@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = a1[1].n128_u64[1];
  if (!v7)
  {
    if (!a1[1].n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  v10 = sub_10026ECB4(&v17);
  v11 = a1[1].n128_u64[0];
  if (a2 == v10)
  {
    --a1->n128_u64[0];
    a1[1].n128_u64[0] = ++v11;
  }

  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  if (a2 == sub_1002BCA74(&v17))
  {
    a1[1].n128_u64[0] = ++v11;
  }

  if (v11)
  {
LABEL_9:
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    if (a3 == sub_1002BCA84(&v17))
    {
      --a1->n128_u64[1];
      a1[1].n128_u64[1] = ++v7;
    }

    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    if (a3 == sub_1002BCA8C(&v17))
    {
      a1[1].n128_u64[1] = v7 + 1;
    }
  }

LABEL_13:
  result = *a1;
  v16 = a1[1];
  *a4 = *a1;
  a4[1] = v16;
  return result;
}

void sub_10030DD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_10030DE08(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1000C1D48();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1000E7D14(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_10030DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = 0;
  v5 = a5[3];
  v10 = a5[2];
  v11 = v5;
  v12 = *(a5 + 8);
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  sub_1003114FC();
}

void sub_10030E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v73 - 240), 8);
  _Block_object_dispose(&a57, 8);
  if (__p)
  {
    a64 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a66, 8);
  v75 = a72;
  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(v75);
  }

  _Unwind_Resume(a1);
}

void sub_100310768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v33 = *(v31 - 144);
  if (v33)
  {
    *(v31 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 120);
  if (v34)
  {
    *(v31 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_100310D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100311030(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return v2 ^ 1u;
  }

  v2 = a1[1];
  if (v2 != a2[1])
  {
    return v2 ^ 1u;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  v5 = v3 < v4;
  if (v3 != v4)
  {
    return v5;
  }

  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v5 = v6 < v7;
  if (v6 != v7)
  {
    return v5;
  }

  v8 = *(a1 + 3);
  v9 = *(a2 + 3);
  v10 = v8 < v9;
  if (v8 != v9)
  {
    return v10;
  }

  v11 = *(a1 + 4);
  v12 = *(a2 + 4);
  v10 = v11 < v12;
  if (v11 != v12)
  {
    return v10;
  }

  v14 = *(a1 + 5);
  v15 = *(a2 + 5);
  return v14 != v15 && v14 < v15;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003110C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  sub_100312F6C(a3, &v6);
  sub_100312F6C(a4, &v5);
}

unint64_t sub_100311114(__int128 *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = a1[1];
      v13 = *a1;
      v14 = v12;
      v8 = sub_10026ECB4(&v13);
    }

    else
    {
      if (a2 != 3)
      {
        return 0;
      }

      v7 = a1[1];
      v13 = *a1;
      v14 = v7;
      v8 = sub_1002BCA74(&v13);
    }

    v11 = *(a1 + 5);
    return SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v8, *(&v6 - 1));
  }

  if (!a2)
  {
    v3 = *(a1 + 4);
    v10 = a1[1];
    v13 = *a1;
    v14 = v10;
    v5 = sub_1002BCA8C(&v13);
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  v5 = sub_1002BCA84(&v13);
LABEL_10:
  v11 = v5;
  v8 = v3;
  return SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v8, *(&v6 - 1));
}

uint64_t sub_1003111D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v6 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100311290;
  v12 = &unk_101855620;
  v13 = a2;
  v14 = a3;
  v17 = a5;
  v15 = a1;
  v16 = a6;
  v18 = a4;
  do
  {
    v7 = qword_101464BE0[v6];
    v19 = 0;
    result = (v11)(v10, v7, &v19);
    if (v19)
    {
      break;
    }
  }

  while (v6++ != 3);
  return result;
}

uint64_t sub_100311290(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[1];
  v17 = *v4;
  v18 = v6;
  result = sub_1002BCA9C(&v17, *v5, *(v5 + 8));
  if (result)
  {
    do
    {
      v5 = *(v5 + 8 * a2 + 16);
      v8 = v4[1];
      v17 = *v4;
      v18 = v8;
      result = sub_1002BCA9C(&v17, *v5, *(v5 + 8));
    }

    while ((result & 1) != 0);
  }

  if (*(a1 + 64))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v9 = sub_100311114(v4, a2);
    v11 = v10;
    result = static TSContentLanguage.Models.CharacterProperties.FontFeaturesType.__derived_struct_equals(_:_:)(v9, v10, *v5, *(v5 + 8));
    if ((result & 1) == 0)
    {
      v12 = *(a1 + 48);
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *&v17 = v9;
      *(&v17 + 1) = v11;
      sub_1003113BC(v12, &v17);
      v13 = *(*(a1 + 48) + 8);
      result = sub_10050CFF8(a2);
      *(v13 - 72 + 8 * a2) = v5;
      v14 = v5 + 8 * result;
      v15 = *(v14 + 16);
      *(v13 - 72 + 8 * result) = v15;
      *(v15 + 8 * a2 + 16) = v13 - 88;
      *(v14 + 16) = v13 - 88;
      v5 = v13 - 88;
    }
  }

  v16 = *(v5 + 80) | 2;
  *(v5 + 80) = v16;
  *(v5 + 80) = v16 & 0xFFBF | ((*(a1 + 65) & 1) << 6);
  *(*(a1 + 40) + 8 * a2 + 56) = v5;
  return result;
}

void sub_1003113BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1000C1D48();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_100313038(a1, v14);
    }

    v15 = 88 * v11;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v10 = 88 * v11 + 88;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
  }

  *(a1 + 8) = v10;
}

void sub_100311D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000D87F0(v33 - 240, *(v33 - 232));
  sub_1000D87F0(v33 - 216, *(v33 - 208));
  _Unwind_Resume(a1);
}

void *sub_100311DD8(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      sub_100313038(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_100311EA4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_100313094(a1, a2 - v2);
  }
}

double sub_100311ED4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = a1;
    v3 = *a1;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(v2 + 176);
      v2 = v1;
      v9 = *v1;
      if ((v8 & 2) == 0 || (*(v1 + 176) & 2) == 0)
      {
        v10 = sub_1002BCB18(*v3, v3[1], *v9);
        if (v10 == 0 && v11 > 0)
        {
          v4 = v4 + v11;
        }

        if (v10 == 0 && v11 < 0)
        {
          v5 = v5 - v11;
        }

        if (v11 == 0 && v10 > 0)
        {
          v7 = v7 + v10;
        }

        if (v11 == 0 && v10 < 0)
        {
          v6 = v6 - v10;
        }
      }

      v1 = *(v2 + 24);
      v3 = v9;
    }

    while (v1);
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  return fmin(v6, v7) + fmin(v4, v5);
}

uint64_t sub_100311FD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    sub_1002BCB30(**a1, *(*a1 + 8), *a2, a2[1]);
    v6 = *(a1 + 8);
    if (v6 != a3)
    {
      sub_10050CFF8(v6);
    }

    v7 = a1;
    do
    {
      if (*v7 == a2)
      {
        break;
      }

      v7 = v7[3];
    }

    while (v7);
    operator new();
  }

  return 0;
}

uint64_t sub_1003121D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  *(result + 176) |= 2u;
  do
  {
    if (*result == a3)
    {
      break;
    }

    v7 = sub_100311FD0(result, *(*result + 8 * a2 + 16), a2);
    result = v8;
    if (v7 != v8)
    {
      sub_100312260(a4, &v8);
      v8 = v7;
      result = v7;
    }
  }

  while (result);
  return result;
}

void sub_100312260(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C1D48();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1003131A8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_100312334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10050CFF8(a6);
  if (a1 == a4 && a2 == a5)
  {
    if (a3 == a6)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    v14 = v12 == a3;
LABEL_7:
    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  if (v12 == a3)
  {
    v16 = sub_1002BCB04(a3);
    v18 = v17;
    v19 = sub_1002BCB18(a4, a5, a1);
    if (sub_1002BCB24(v16, v18, v19, v20) < 0)
    {
      return 4;
    }

    v21 = sub_10050D008(a3);
    if (a1 == a4 && v21 == 0.0)
    {
      return 0;
    }

    v14 = a2 == a5 && v22 == 0.0;
    v13 = 2;
    goto LABEL_7;
  }

  if (a3 == a6)
  {
    v23 = sub_10050D008(a6);
    result = 4;
    if (a1 != a4 || v23 != 0.0)
    {
      if (a2 == a5 && v24 == 0.0)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v26 = sub_1002BCB04(a3);
    v28 = v27;
    v29 = sub_1002BCB18(a4, a5, a1);
    v31 = sub_1002BCB24(v26, v28, v29, v30);
    v32 = sub_1002BCB04(a6);
    v34 = v33;
    v35 = sub_1002BCB18(a1, a2, a4);
    if ((v31 | sub_1002BCB24(v32, v34, v35, v36)) >= 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_1003124F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v9 = *(a3 + 8 * a4 + 88);
  v10 = *(a1 + 16);
  v11 = *a1;
  v23 = a3 + 8 * a4;
  if ((v10 & 1) != 0 || (*(v11 + 80) & 8) != 0)
  {
    v19 = *v11;
    v20 = *(v11 + 8);
    v21 = *v9;
    v22 = *(v9 + 8);
    *(a5 + 32) = sub_1002BCB30(*v11, v20, *v9, v22);
    *(a5 + 8) = sub_100312334(v19, v20, a1[1], v21, v22, a4);
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = sub_1002BCB30(*v11, *(v11 + 8), *a2, v13);
    v15 = sub_1002BCB30(v12, v13, *v9, *(v9 + 8));
    v16 = 0;
    *(a5 + 32) = v14 + v15;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v25 = sub_100312704;
    v26 = &unk_101855648;
    v29 = a2;
    v30 = v9;
    v31 = a4;
    v27 = &v32;
    v28 = a1;
    do
    {
      v17 = qword_101464BE0[v16];
      v36 = 0;
      (v25)(v24, v17, &v36);
      if (v36)
      {
        break;
      }
    }

    while (v16++ != 3);
    *(a5 + 8) = v33[3];
    _Block_object_dispose(&v32, 8);
    if (a1[2])
    {
      goto LABEL_11;
    }
  }

  if ((*(a2 + 80) & 0x10) != 0)
  {
LABEL_13:
    *(a5 + 1) = 1;
    return;
  }

LABEL_11:
  if ((*(v9 + 80) & 0x10) != 0 || (*(*(v23 + 56) + 80) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

void sub_1003126EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100312704(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_100312334(***(a1 + 40), *(**(a1 + 40) + 8), *(*(a1 + 40) + 8), *v4, v6, a2);
  v8 = sub_10050CFF8(a2);
  result = sub_100312334(v5, v6, v8, **(a1 + 56), *(*(a1 + 56) + 8), *(a1 + 64));
  v10 = (result + v7);
  v11 = *(*(a1 + 32) + 8);
  if (*(v11 + 24) < v10)
  {
    v10 = *(v11 + 24);
  }

  *(v11 + 24) = v10;
  return result;
}

void sub_100312798(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x6012000000;
  v20 = sub_1003128E8;
  v21 = nullsub_45;
  v22 = &unk_1016A8115;
  v23 = xmmword_101464BB0;
  v24 = unk_101464BC0;
  v25 = xmmword_101464BD0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100312900;
  v12 = &unk_101855670;
  v13 = &v17;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  do
  {
    v6 = qword_101464BE0[v5];
    v26 = 0;
    (v11)(v10, v6, &v26);
    if (v26)
    {
      break;
    }
  }

  while (v5++ != 3);
  v8 = v18;
  v9 = *(v18 + 4);
  *a4 = *(v18 + 3);
  a4[1] = v9;
  a4[2] = *(v8 + 5);
  _Block_object_dispose(&v17, 8);
}

void sub_1003128D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003128E8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

double sub_100312900(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  sub_1003124F0(*(a1 + 40), *(a1 + 48), *(a1 + 56), a2, v9);
  if (sub_100311030((v4 + 48), v9))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[4];
    v10 = v5[3];
    v11 = v6;
    v12 = v5[5];
  }

  else
  {
    sub_1003124F0(*(a1 + 40), *(a1 + 48), *(a1 + 56), a2, &v10);
    v5 = *(*(a1 + 32) + 8);
  }

  v7 = v11;
  v5[3] = v10;
  v5[4] = v7;
  result = *&v12;
  v5[5] = v12;
  return result;
}

__n128 sub_1003129A4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1003129C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100312B1C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

uint64_t sub_100312B60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 40);
  result = sub_10050CFF8(v6[1]);
  if (result != a2)
  {
    if (*(*v6 + 8 * a2 + 16))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  return result;
}

void sub_100312BC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (sub_10050CFF8(v4[1]) != a2 || *(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = sub_100311FD0(v4, *(*v4 + 8 * a2 + 16), a2);
    v5 = v35;
    v6 = v35[3];
    if (v6)
    {
      if ((v6[16] & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) == 1)
      {
        if (*(a1 + 73) == 1 && (*(*v6 + 80) & 0x100) != 0)
        {
          v6[176] |= 1u;
        }

        else if ((*(*v6 + 80) & 4) != 0)
        {
          v7 = 0;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v28 = sub_100312E40;
          v29 = &unk_101855708;
          v8 = *(a1 + 144);
          v32 = a2;
          v33 = v8;
          v9 = *(a1 + 48);
          v30 = &v34;
          v31 = v9;
          do
          {
            v10 = qword_101464BE0[v7];
            LOBYTE(v23) = 0;
            v28(v27, v10, &v23);
            if (v23)
            {
              break;
            }
          }

          while (v7++ != 3);
          v5 = v35;
        }
      }

      v12 = v5[3];
      if (*(v12 + 176))
      {
        v16 = 0;
        v17 = 0;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0.0;
      }

      else
      {
        sub_100312798(v12, *(a1 + 152), *(a1 + 144), &v23);
        v13 = v24;
        v14 = v25;
        v15 = v26;
        v16 = BYTE1(v23);
        v17 = v23;
        v5 = v35;
        v12 = v35[3];
      }

      v18 = *(v12 + 81);
      v19 = v15 + *(v12 + 120);
      *(v12 + 128) = (*(v12 + 80) | v17) & 1;
      *(v12 + 129) = (v18 | v16) & 1;
      *(v12 + 136) = vaddq_s64(*(v12 + 88), v13);
      *(v12 + 152) = vaddq_f64(v14, *(v12 + 104));
      *(v12 + 168) = v19;
      sub_100312260(*(*(a1 + 56) + 8) + 48, v5 + 3);
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 48);
      v22 = *(v20 + 56);
      v23 = sub_100311020;
      sub_10031334C(v21, v22, &v23, (v22 - v21) >> 3);
    }

    _Block_object_dispose(&v34, 8);
  }
}

void *sub_100312E40(void *result, uint64_t a2, _BYTE *a3)
{
  if (result[6] != a2)
  {
    v3 = result;
    v4 = *(*(result[4] + 8) + 24);
    v5 = result[7] + 8 * a2;
    if (*v4 == *(v5 + 88))
    {
      v7 = sub_10050CFF8(a2);
      result = sub_1003121D0(v4, v7, *(v5 + 56), *(v3[5] + 8) + 48);
      *(*(v3[4] + 8) + 24) = result;
      v8 = *(*(v3[4] + 8) + 24);
      *(v8 + 176) |= 1u;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_100312EF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000E7CD8(result, a4);
  }

  return result;
}

void sub_100312F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100312F6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100313038(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_100313094(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1000C1D48();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1003131A8(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1003131A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_1003131F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) | 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *v8 >= v10;
        v8 += *v8 < v10;
        if (!v11)
        {
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v12;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 8 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v14;
          }

          else
          {
            v15 = v8[1];
            v11 = *v8 >= v15;
            v8 += *v8 < v15;
            if (v11)
            {
              v7 = v14;
            }
          }

          v12 = *v8;
        }

        while (*v8 >= v13);
        *a4 = v13;
      }
    }
  }

  return result;
}

void *sub_1003132A0(void *a1, uint64_t (**a2)(void, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = (*a2)(a1[v6 + 1], a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t sub_10031334C(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_10031381C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100313860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100313B90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100313BD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100314784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;
}

void sub_100314938(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031497C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003155DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100315620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100316FD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031701C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100317060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003170A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031792C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100317970(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031895C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003189A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100319770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

void sub_10031A494(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031A4D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031A51C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031A560(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031A5A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031A5E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031AAC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031AB0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031ADEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031AE30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031B360(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10031B474(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10031C018(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10031C05C(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10031C0A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031C0E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031C128(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10031C6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_10031C73C(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[18])
  {
    result = [result shouldCreateKnobs];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_10031C78C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10031C7A4(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 152) == 1)
  {
    v3 = [*(v2 + 144) count];
    v4 = v3 > 1;
    if (v3 == 1)
    {
      v5 = [*(a1[4] + 144) firstObject];
      objc_opt_class();
      v4 = objc_opt_isKindOfClass() ^ 1;
    }

    *(*(a1[5] + 8) + 24) = v4 & 1;
    v2 = a1[4];
  }

  v6 = *(v2 + 144);
  v7 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v7, v6);
}

uint64_t sub_10031C86C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & sub_100345928([v3 tag])) != 0 || objc_msgSend(*(a1 + 32), "directlyManagesVisibilityOfKnob:", v3))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 32));
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 1;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_10031C980(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v6 = *(v2 + 144);
  v5 = (v2 + 144);
  v4 = v6;
  if (v3 != v6)
  {
    objc_storeStrong(v5, v3);
    v4 = *(a1[4] + 144);
  }

  if (![v4 count])
  {
    v7 = a1[4];
    v8 = *(v7 + 144);
    *(v7 + 144) = 0;
  }

  v9 = *(a1[4] + 144);
  v10 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v10, v9);
}

void sub_10031CA9C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) renderable];
        [v7 setDelegate:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 144);
  *(v8 + 144) = 0;
}

void sub_10031D848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031D88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031DAF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031DB3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031E1B0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 renderable];
        [v8 opacity];
        if (v9 != 1.0)
        {
          v10 = [*(a1 + 32) directlyManagesVisibilityOfKnob:v7];

          if (v10)
          {
            continue;
          }

          v8 = [v7 renderable];
          LODWORD(v11) = 1.0;
          [v8 setOpacity:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10031E40C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 renderable];
        [v8 opacity];
        if (v9 != 1.0)
        {
          v10 = [*(a1 + 32) directlyManagesVisibilityOfKnob:v7];

          if (v10)
          {
            continue;
          }

          v11 = [v7 renderable];
          [v11 opacity];
          v12 = [NSNumber numberWithFloat:?];
          [*(a1 + 40) setFromValue:v12];

          v13 = [v7 renderable];
          LODWORD(v14) = 1.0;
          [v13 setOpacity:v14];

          v8 = [v7 renderable];
          [v8 addAnimation:*(a1 + 40) forKey:@"fade in"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_10031E6F0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 renderable];
        [v8 opacity];
        if (v9 == 1.0)
        {
          v10 = [*(a1 + 32) directlyManagesVisibilityOfKnob:v7];

          if (v10)
          {
            continue;
          }

          v11 = [v7 renderable];
          [v11 setOpacity:0.0];

          v8 = [v7 renderable];
          [v8 addAnimation:*(a1 + 40) forKey:@"fade out"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10031E99C(id a1)
{
  v1 = [CRLColor colorWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v2 = qword_101A34C10;
  qword_101A34C10 = v1;
}

void sub_10031F130(uint64_t a1, void *a2)
{
  v26 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        v8 = [v7 renderable];
        if (objc_opt_respondsToSelector())
        {
          v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013530B0();
          }

          v10 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v20 = v10;
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = 67110146;
            v34 = v9;
            v35 = 2082;
            v36 = "[CRLCanvasRep p_addRenderablesForKnobsToArray:withDelegate:isOverlay:]_block_invoke";
            v37 = 2082;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m";
            v39 = 1024;
            v40 = 2724;
            v41 = 2114;
            v42 = v22;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Knob class %{public}@ is trying to vend a layer directly!", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013530D8();
          }

          v11 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v23 = v11;
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v34 = v9;
            v35 = 2114;
            v36 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v12 = [NSString stringWithUTF8String:"[CRLCanvasRep p_addRenderablesForKnobsToArray:withDelegate:isOverlay:]_block_invoke"];
          v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2724 isFatal:0 description:"Knob class %{public}@ is trying to vend a layer directly!", v15];
        }

        if (v8)
        {
          v16 = *(v28 + 48);
          if (v16 != [v7 shouldDisplayDirectlyOverRep])
          {
            if ((*(*(v28 + 40) + 154) & 1) == 0)
            {
              [v8 opacity];
              if (v17 == 0.0)
              {
                v18 = [v8 presentationRenderable];
                [v18 opacity];
                if (v19 == 0.0)
                {
                  v25 = [*(v28 + 40) directlyManagesVisibilityOfKnob:v7];

                  if (!v25)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                }
              }
            }

            v26[2](v26, v7, v8);
          }
        }

LABEL_24:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v4);
  }
}

void sub_10031F528(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031F56C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031F5B0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isMemberOfClass:objc_opt_class()];
  v4 = v6;
  if (v3)
  {
    v5 = [v6 underlayRenderableForRep:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    v4 = v6;
  }
}

void sub_10031F63C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 delegate];

  if (!v7)
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = *(a1 + 40);
    }

    [v6 setDelegate:v8];
  }

  [v5 position];
  [v5 pixelAlignedScaledCanvasCenterPositionFromKnobPosition:?];
  v11 = v10;
  v12 = v9;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353100();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v22 = v14;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 67110402;
      v28 = v13;
      v29 = 2082;
      v30 = "[CRLCanvasRep p_addRenderablesForKnobsToArray:withDelegate:isOverlay:]_block_invoke_3";
      v31 = 2082;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m";
      v33 = 1024;
      v34 = 2755;
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = v26;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Knob type %{public}@ layer position must be finite for rep class %{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353114();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLCanvasRep p_addRenderablesForKnobsToArray:withDelegate:isOverlay:]_block_invoke"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2755 isFatal:0 description:"Knob type %{public}@ layer position must be finite for rep class %{public}@", v19, v21];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [v6 setPosition:{v11, v12}];
    +[CATransaction commit];
    [*(a1 + 56) addObject:v6];
  }
}

void sub_10031F94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031F990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031FDAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031FDF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10031FFD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10031FFF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[155] = 0;
  }
}

void sub_1003207E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100320828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032086C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003208B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100320FEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321030(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003215B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032180C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321850(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321E08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321E4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321E90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100321ED4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032208C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003220D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100322470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003224B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100322674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003226B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003242E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032432C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_100324878(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = [CRLBezierPath uniteBezierPaths:*(a1 + 32)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 72) + 8) + 40);
  CGAffineTransformMakeTranslation(&v23, -*(a1 + 80), -*(a1 + 88));
  [v7 transformUsingAffineTransform:&v23];
  v8 = *(*(*(a1 + 72) + 8) + 40);
  [*(a1 + 48) viewScale];
  v10 = v9;
  [*(a1 + 48) viewScale];
  CGAffineTransformMakeScale(&v23, v10, v11);
  [v8 transformUsingAffineTransform:&v23];
  if (v2 < v3)
  {
    v12 = [CRLBezierPath tracedPathForImage:*(a1 + 112) alphaThreshold:0.5 pointSpacing:0.0];
    [*(a1 + 48) viewScale];
    v14 = v13;
    [*(a1 + 56) viewScale];
    v16 = v14 / v15;
    [*(a1 + 48) viewScale];
    v18 = v17;
    [*(a1 + 56) viewScale];
    CGAffineTransformMakeScale(&v23, v16, v18 / v19);
    [v12 transformUsingAffineTransform:&v23];
    v20 = [v12 bezierPathByOffsettingPath:1 joinStyle:2.0];

    v21 = [*(*(*(a1 + 72) + 8) + 40) uniteWithBezierPath:v20];
  }

  CGImageRelease(*(a1 + 112));
  return dispatch_semaphore_signal(*(a1 + 64));
}

void sub_100324A18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100324A5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100324AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
    if ([*(*(*(a1 + 80) + 8) + 40) CGPath])
    {
      v4 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [*(*(*(a1 + 80) + 8) + 40) CGPath]);
      [v4 bounds];
      v9 = sub_100120414(v5, v6, v7, v8);
      v11 = v10;
      [*(a1 + 32) bounds];
      v16 = sub_100120414(v12, v13, v14, v15);
      x = sub_10011F31C(v9, v11, v16);
    }

    else
    {
      v4 = 0;
      x = CGPointZero.x;
    }

    v19 = [UIDragPreviewTarget alloc];
    v20 = [*(a1 + 48) canvasView];
    v21 = *(a1 + 56);
    [*(a1 + 32) frame];
    [v21 p_centerForPreviewFrame:?];
    v24 = [v19 initWithContainer:v20 center:{sub_10011F334(v22, v23, x)}];

    v25 = objc_alloc_init(UIDragPreviewParameters);
    [v25 setBackgroundColor:*(a1 + 64)];
    if (v4)
    {
      [v25 setVisiblePath:v4];
    }

    v18 = [[UITargetedDragPreview alloc] initWithView:*(a1 + 32) parameters:v25 target:v24];
  }

  else
  {
    v18 = 0;
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    v27 = (*(v26 + 16))();
    [v3 setLocalObject:v27];
  }

  return v18;
}

void sub_100325494(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003254D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100325AB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100325AF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100325B3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100325B80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100325BC4(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1018E1B78];
  v2 = qword_101A34C18;
  qword_101A34C18 = v1;

  v3 = [[NSSet alloc] initWithArray:&off_1018E1B90];
  v4 = qword_101A34C20;
  qword_101A34C20 = v3;

  v5 = [[NSSet alloc] initWithArray:&off_1018E1BA8];
  v6 = qword_101A34C28;
  qword_101A34C28 = v5;

  v7 = [[NSSet alloc] initWithArray:&off_1018E1BC0];
  v8 = qword_101A34C30;
  qword_101A34C30 = v7;

  v9 = [[NSSet alloc] initWithArray:&off_1018E1BD8];
  v10 = qword_101A34C38;
  qword_101A34C38 = v9;

  v11 = [[NSSet alloc] initWithArray:&off_1018E1BF0];
  v12 = qword_101A34C40;
  qword_101A34C40 = v11;

  v13 = [[NSSet alloc] initWithArray:&off_1018E1C08];
  v14 = qword_101A34C48;
  qword_101A34C48 = v13;

  v15 = [[NSSet alloc] initWithArray:&off_1018E1C20];
  v16 = qword_101A34C50;
  qword_101A34C50 = v15;

  v17 = [[NSSet alloc] initWithArray:&off_1018E1C38];
  v18 = qword_101A34C58;
  qword_101A34C58 = v17;

  v19 = [[NSSet alloc] initWithArray:&off_1018E1C50];
  v20 = qword_101A34C60;
  qword_101A34C60 = v19;
}

void sub_100325D58(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1018E1C68];
  v2 = qword_101A34C70;
  qword_101A34C70 = v1;
}

void sub_100325DA0(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1018E1C80];
  v2 = qword_101A34C80;
  qword_101A34C80 = v1;
}

void sub_100326018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032605C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032625C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003262A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003264F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100326534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10032658C(uint64_t a1, uint64_t a2)
{
  v2 = 3;
  if (a1 == a2)
  {
    v2 = a1;
  }

  if (!a2)
  {
    v2 = a1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1003265AC(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AVAssetExportPresetPassthrough])
  {
    v2 = 1;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:AVAssetExportPreset1920x1080])
  {
    v2 = 2;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:AVAssetExportPreset3840x2160])
  {
    v2 = 3;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:AVAssetExportPresetHEVC1920x1080WithAlpha])
  {
LABEL_8:
    v2 = 4;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:AVAssetExportPresetHEVC3840x2160WithAlpha])
  {
    goto LABEL_10;
  }

  if ([v1 isEqualToString:AVAssetExportPresetHEVC1920x1080])
  {
    goto LABEL_8;
  }

  if ([v1 isEqualToString:AVAssetExportPresetHEVC3840x2160])
  {
LABEL_10:
    v2 = 5;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:AVAssetExportPresetMediumQuality])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

LABEL_11:

  return v2;
}

id sub_1003266C4(uint64_t a1, int a2, id a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = &AVAssetExportPresetPassthrough;
        goto LABEL_18;
      }

      if (a1 != 2)
      {
        goto LABEL_19;
      }
    }

    v4 = &AVAssetExportPreset1920x1080;
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v4 = &AVAssetExportPresetHEVC3840x2160;
      v5 = &AVAssetExportPresetHEVC3840x2160WithAlpha;
LABEL_14:
      if (a2)
      {
        v4 = v5;
      }

      goto LABEL_18;
    }

    if (a1 != 6)
    {
      goto LABEL_19;
    }

    v4 = &AVAssetExportPresetMediumQuality;
  }

  else
  {
    if (a1 != 3)
    {
      v4 = &AVAssetExportPresetHEVC1920x1080;
      v5 = &AVAssetExportPresetHEVC1920x1080WithAlpha;
      goto LABEL_14;
    }

    v4 = &AVAssetExportPreset3840x2160;
  }

LABEL_18:
  a3 = *v4;
LABEL_19:

  return a3;
}

uint64_t sub_100326798(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AVAssetExportPresetPassthrough] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", AVAssetExportPresetHEVCHighestQualityWithAlpha) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", AVAssetExportPresetHEVC1920x1080WithAlpha))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:AVAssetExportPresetHEVC3840x2160WithAlpha];
  }

  return v2;
}

BOOL sub_100326E3C(id a1, CRLCanvasElementInfo *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100326E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100326ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100327718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032775C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1003277A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(UIDragPreviewParameters);
  [v4 setVisiblePath:*(a1 + 32)];
  v5 = [*(a1 + 40) UIColor];
  [v4 setBackgroundColor:v5];

  v6 = [UIDragPreviewTarget alloc];
  v7 = [*(a1 + 48) canvasView];
  [*(a1 + 56) frame];
  v12 = [v6 initWithContainer:v7 center:{sub_100120414(v8, v9, v10, v11)}];

  v13 = [[UITargetedDragPreview alloc] initWithView:*(a1 + 56) parameters:v4 target:v12];
  [v3 setLocalObject:*(a1 + 64)];

  return v13;
}

void sub_100327A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100327A54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100327A6C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  obj = sub_100014370(v6, v5);

  v7 = [obj storage];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a3 = 1;
  }
}

void sub_100327F78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100327FBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003280A8(id a1)
{
  v1 = objc_alloc_init(CRLDisplayLinkManager);
  v2 = qword_101A34C90;
  qword_101A34C90 = v1;
}

void sub_100328518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032855C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003286F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100328734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100328E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100328E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003297B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003297FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100329998(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003299DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032A3B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032A3F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032A858(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032A89C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032BDD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032BE14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032DA64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032DAA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032DCC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032DD08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032DF64(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_101A34CB0;
  qword_101A34CB0 = v1;
}

void sub_10032E8C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032E90C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032E950(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032E994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032F024(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_10032FDF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10032FE38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003300C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033010C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330460(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v2 = *(*(a1 + 32) + 16);
  v36 = 0;
  v3 = [v2 statusOfValueForKey:@"hasProtectedContent" error:&v36];
  v4 = v36;
  if (v3 == 2)
  {
    if ([*(*(a1 + 32) + 16) hasProtectedContent])
    {
      v8 = objc_opt_class();
      v7 = sub_100014370(v8, *(*(a1 + 32) + 16));
      if (!v7)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101355134();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10135515C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013551F8();
        }

        v9 = off_1019EDA68;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v10 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_checkCompatibilityOfAVAssetUpToLevel:completionHandler:]_block_invoke"];
        v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
        [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:111 isFatal:0 description:"invalid nil value for '%{public}s'", "URLAsset"];
      }

      v12 = [v7 URL];
      v35 = 0;
      [v12 getResourceValue:&v35 forKey:NSURLLocalizedNameKey error:0];
      v13 = v35;
      if (!v13)
      {
        v14 = [v7 URL];
        v13 = [v14 lastPathComponent];
      }

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"The media file “%@” is copy protected. You don’t have permission to use it." value:0 table:0];
      v6 = [NSString stringWithFormat:v16, v13];

      v41 = NSLocalizedDescriptionKey;
      v42 = v6;
      v17 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainMediaCompatibility" code:99 userInfo:v17];

      v4 = v18;
      goto LABEL_27;
    }

    v38[3] = 1;
    v19 = *(*(a1 + 32) + 16);
    v34 = 0;
    v20 = [v19 statusOfValueForKey:@"playable" error:&v34];
    v21 = v34;
    if (v20 != 2)
    {
      if (v20 == 4)
      {
        if (([*(a1 + 32) isCancelled] & 1) == 0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135505C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101355084();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135510C();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v23 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_checkCompatibilityOfAVAssetUpToLevel:completionHandler:]_block_invoke"];
          v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
          [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:238 isFatal:0 description:"Movie validation cancelled itself without the checker knowing about it."];
        }
      }

      else
      {
        v38[3] = 0;
      }

      goto LABEL_46;
    }

    if ([*(*(a1 + 32) + 16) crl_isPlayable])
    {
      v38[3] = 2;
      v25 = *(a1 + 48);
      if (v25 < 3)
      {
LABEL_46:
        [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 48) actualLevel:v38[3] error:v21 completionHandler:*(a1 + 40)];
LABEL_49:

        goto LABEL_29;
      }

      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v28 = v33;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100330CD0;
      v33[3] = &unk_101856958;
      v33[4] = v26;
      v33[6] = &v37;
      v33[7] = v25;
      v33[5] = *(a1 + 40);
      [v27 loadValuesAsynchronouslyForKeys:&off_1018E1CB0 completionHandler:v33];
    }

    else
    {
      v29 = *(a1 + 32);
      v30 = *(v29 + 16);
      v28 = v32;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100330F9C;
      v32[3] = &unk_101856958;
      v32[4] = v29;
      v32[6] = &v37;
      v31 = *(a1 + 40);
      v32[7] = *(a1 + 48);
      v32[5] = v31;
      [v30 loadValuesAsynchronouslyForKeys:&off_1018E1CC8 completionHandler:v32];
    }

    goto LABEL_49;
  }

  if (v3 != 4 || ([*(a1 + 32) isCancelled] & 1) != 0)
  {
    goto LABEL_28;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101354F84();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101354FAC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101355034();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v6 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_checkCompatibilityOfAVAssetUpToLevel:completionHandler:]_block_invoke"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:130 isFatal:0 description:"Movie validation cancelled itself without the checker knowing about it."];
LABEL_27:

LABEL_28:
  [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 48) actualLevel:v38[3] error:v4 completionHandler:*(a1 + 40)];
LABEL_29:

  _Block_object_dispose(&v37, 8);
}

void sub_100330BC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330C04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330C48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330C8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330CD0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v10 = 0;
  v3 = [v2 statusOfValueForKey:@"tracks" error:&v10];
  v4 = v10;
  if (v3 == 4)
  {
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101355220();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101355248();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013552D0();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_checkCompatibilityOfAVAssetUpToLevel:completionHandler:]_block_invoke"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:182 isFatal:0 description:"Movie validation cancelled itself without the checker knowing about it."];
    }
  }

  else if (v3 == 2)
  {
    *(*(a1 + 32) + 48) = [*(a1 + 32) p_doesLoadedAssetHaveHEVCTracks];
    *(*(a1 + 32) + 49) = [*(a1 + 32) p_doesLoadedAssetHaveProResTracks];
    if (*(*(a1 + 32) + 49) == 1 && ([objc_opt_class() platformSupportsProRes] & 1) == 0)
    {
      v5 = *(*(a1 + 48) + 8);
      v6 = 2;
    }

    else if (*(a1 + 56) >= 4 && [*(a1 + 32) p_isLoadedAssetPlayableOnSupportedDevices])
    {
      v5 = *(*(a1 + 48) + 8);
      if (*(*(a1 + 32) + 48) == 1)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v5 = *(*(a1 + 48) + 8);
      v6 = 3;
    }

    *(v5 + 24) = v6;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) error:v4 completionHandler:*(a1 + 40)];
}

void sub_100330F14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330F58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100330F9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v8 = 0;
  v3 = [v2 statusOfValueForKey:@"tracks" error:&v8];
  v4 = v8;
  if (v3 == 4)
  {
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013552F8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101355320();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013553A8();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_checkCompatibilityOfAVAssetUpToLevel:completionHandler:]_block_invoke"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:220 isFatal:0 description:"Movie validation cancelled itself without the checker knowing about it."];
    }
  }

  else if (v3 == 2)
  {
    *(*(a1 + 32) + 48) = [*(a1 + 32) p_doesLoadedAssetHaveHEVCTracks];
    *(*(a1 + 32) + 49) = [*(a1 + 32) p_doesLoadedAssetHaveProResTracks];
    if (*(*(a1 + 32) + 49) == 1)
    {
      [objc_opt_class() platformSupportsProRes];
    }

    *(*(*(a1 + 48) + 8) + 24) = 2;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) error:v4 completionHandler:*(a1 + 40)];
}

void sub_10033118C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003311D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100331214(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100331258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033153C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100331580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100331F80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100331FC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100332154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100332198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003325A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003325E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003346FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100334740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100335460(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003354A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100335A0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100335A50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003361A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003361E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100336400(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  [*(a1 + 32) setGeometry:a2];
  if (v9)
  {
    v8 = [*(a1 + 32) maskInfo];
    [v8 setGeometry:v9];
    [v8 setPathSource:v7];
  }
}

uint64_t sub_1003365B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003365C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) imageInfo];
  v10 = [v9 geometry];
  v11 = [v10 isEqual:v23];
  v12 = v11;
  if (!v7)
  {

    if (v12)
    {
      goto LABEL_10;
    }

    v17 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
    v18 = [*(a1 + 32) imageInfo];
    v19 = [(CRLCommandSetInfoGeometry *)v17 initWithBoardItem:v18 geometry:v23];
    goto LABEL_9;
  }

  if ((v11 & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = [*(a1 + 32) imageInfo];
  v14 = [v13 maskInfo];
  v15 = [v14 geometry];
  v16 = [v15 isEqual:v7];

  if ((v16 & 1) == 0)
  {
LABEL_8:
    v20 = [_TtC8Freeform30CRLCommandSetImageItemGeometry alloc];
    v18 = [*(a1 + 32) imageInfo];
    v19 = [(CRLCommandSetImageItemGeometry *)v20 initWithImageItem:v18 imageGeometry:v23 maskGeometry:v7 maskPathSource:v8];
LABEL_9:
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v19;
  }

LABEL_10:
}

void sub_100336B40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100336B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100336D00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100336D44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337000(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337088(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003370CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337284(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003372C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337ACC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100337B10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003385B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003385F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033863C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003387FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338840(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338AF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338B3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338B80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338BC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100338E50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = sub_100014370(v4, v3);

  [*(a1 + 32) crl_addNonNilObject:v7];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 48;
  if (isKindOfClass)
  {
    v6 = 40;
  }

  [*(a1 + v6) crl_addNonNilObject:v7];
}

void sub_100338FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 parentItem];

  v6 = sub_100014370(v4, v5);

  [*(a1 + 32) crl_addNonNilObject:v6];
}

void sub_100339278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003392BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100339510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 parentItem];

  v6 = sub_100014370(v4, v5);

  [*(a1 + 32) crl_addNonNilObject:v6];
}

void sub_100339AD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100339B1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100339F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100339F90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100339FD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033A018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033A82C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033A870(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10033B0C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

void sub_10033B1CC(uint64_t a1)
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v6 = objc_opt_class();
  v7 = [*(a1 + 32) target];
  v8 = sub_100014370(v6, v7);

  v9 = [v8 selection];
  if ([v9 isInsertionPoint])
  {
    v10 = [v8 selection];
    if ([v10 type] != 3)
    {
      v11 = [v8 selection];
      v12 = [v11 type];

      if (v12 == 5)
      {
        goto LABEL_7;
      }

      v9 = [v8 interactiveCanvasController];
      v10 = [v9 layerHost];
      v13 = [v10 canvasView];
      v14 = [v8 interactiveCanvasController];
      [v8 caretRect];
      [v14 convertUnscaledToBoundsRect:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [*(a1 + 32) superview];
      [v13 convertRect:v23 toView:{v16, v18, v20, v22}];
      x = v24;
      y = v25;
      width = v26;
      height = v27;
    }
  }

LABEL_7:
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectIsEmpty(v32))
  {
    memset(&v31, 0, sizeof(v31));
    [*(a1 + 32) bounds];
    MaxY = CGRectGetMaxY(v33);
    CGAffineTransformMakeTranslation(&v31, 0.0, MaxY * 0.5);
    v29 = v31;
    CGAffineTransformScale(&v30, &v29, 0.25, 0.25);
    v31 = v30;
    [*(a1 + 32) setTransform:&v30];
  }

  else
  {
    [*(a1 + 32) setFrame:{x, y, width, height}];
  }
}

id sub_10033B414(uint64_t a1)
{
  [*(a1 + 32) remove];
  v2 = *(a1 + 32);

  return [v2 setTarget:0];
}

void sub_10033C120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033C164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10033C378(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 frame];
  v11 = sub_100120414(v7, v8, v9, v10);
  v13 = v12;
  v14 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();

  v15 = [UIPointerShape shapeWithRoundedRect:sub_10011EC70(v11 cornerRadius:v13, v14)];
  v16 = [UIPointerStyle styleWithEffect:v5 shape:v15];

  return v16;
}

void sub_10033CEF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033CF34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033D1EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033D230(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033D788(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_101A34CC0;
  qword_101A34CC0 = v1;
}

void sub_10033EB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10033EB38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  [v5 tailPoint];
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  [v5 getControlKnobPosition:12];
  v9 = *(*(a1 + 40) + 8);
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  [v5 headPoint];
  v12 = *(*(a1 + 48) + 8);
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  [v5 pathBounds];
  v16 = v15;
  v17 = *(*(a1 + 32) + 8);
  *(v17 + 32) = sub_10011F31C(*(v17 + 32), *(v17 + 40), v15);
  *(v17 + 40) = v18;
  v19 = *(*(a1 + 40) + 8);
  *(v19 + 32) = sub_10011F31C(*(v19 + 32), *(v19 + 40), v16);
  *(v19 + 40) = v20;
  v21 = *(*(a1 + 48) + 8);
  *(v21 + 32) = sub_10011F31C(*(v21 + 32), *(v21 + 40), v16);
  *(v21 + 40) = v22;
  memset(&v32, 0, sizeof(v32));
  if (v5)
  {
    [v5 transformInRoot];
  }

  CGAffineTransformMakeScale(&t2, *(a1 + 56), *(a1 + 56));
  v29 = v32;
  CGAffineTransformConcat(&v31, &v29, &t2);
  v32 = v31;
  v23 = sub_10011ECB4();
  sub_100139C04(0, 1, &t2, v23, v24, v25, v26);
  v29 = v32;
  CGAffineTransformConcat(&v31, &v29, &t2);
  v32 = v31;
  v27 = *&v31.a;
  v28 = *&v31.c;
  *(*(*(a1 + 32) + 8) + 32) = vaddq_f64(*&v31.tx, vmlaq_n_f64(vmulq_n_f64(*&v31.c, *(*(*(a1 + 32) + 8) + 40)), *&v31.a, *(*(*(a1 + 32) + 8) + 32)));
  *(*(*(a1 + 40) + 8) + 32) = vaddq_f64(*&v32.tx, vmlaq_n_f64(vmulq_n_f64(v28, *(*(*(a1 + 40) + 8) + 40)), v27, *(*(*(a1 + 40) + 8) + 32)));
  *(*(*(a1 + 48) + 8) + 32) = vaddq_f64(*&v32.tx, vmlaq_n_f64(vmulq_n_f64(v28, *(*(*(a1 + 48) + 8) + 40)), v27, *(*(*(a1 + 48) + 8) + 32)));
}

id sub_10033EEC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 posterImageAssetPayload];
  v6 = [*(a1 + 40) boardItemFactory];
  v7 = [*(a1 + 32) movieAssetPayload];
  [*(a1 + 32) posterTime];
  v8 = [v6 makeMovieItemWithGeometry:v4 movieData:v7 posterImageData:v5 posterTime:?];

  return v8;
}

void sub_10033F620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10033F664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003401D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100340214(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100340258(uint64_t a1, void *a2)
{
  v3 = [a2 repForSelecting];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 layout];
    if (v5 == *(a1 + 32))
    {
      v9 = 0;
    }

    else
    {
      v6 = [v4 layout];
      v7 = [v6 info];
      if (v7 == *(a1 + 40))
      {
        v9 = 0;
      }

      else
      {
        v8 = [v4 layout];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass() ^ 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_100340858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100340884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10034089C(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 layoutForInfo:a1[4]];

  v6 = sub_100013F00(v4, v5);

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356D14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356D28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356DD8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLConnectionLineAdjustmentHelper p_computeLayoutInfoGeometry:andPathSource:forConnectionLine:withBoardItemOwner:]_block_invoke");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:259 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
  }

  [v6 invalidateConnections];
  v10 = [v6 layoutInfoGeometry];
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v6 pathSource];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_100340A74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100340AB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100340E40(uint64_t a1, void *a2)
{
  v3 = [a2 repForSelecting];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 layout];
    v7 = [v5 isValidConnectionDestination:v6 forLineEnd:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003415A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003415EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100341630(uint64_t a1)
{
  v2 = [*(a1 + 32) boardItems];
  v3 = [v2 count];

  if (v3 != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356EC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356ED8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356F60();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper showMediaReplaceUI:]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:70 isFatal:0 description:"Showing replace media UI when more than one image is selected!"];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) boardItems];
  v9 = [v8 anyObject];
  v10 = [v7 repForInfo:v9];

  v11 = [v10 repForSelecting];
  v12 = objc_opt_class();
  v18 = sub_1003038E0(v11, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLMediaReplacingRep);

  v19 = [*(a1 + 40) mediaReplacer];
  [v19 showMediaReplacerForMediaReplacingRep:v18];
}

void sub_10034181C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100341860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003418A4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100341F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100341F78(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[7] == 6)
  {
    [v3 findNewEdgeMagnetCanvasPositionForConnectionLine:a1[4] forLineEnd:a1[8] withCanvasPosition:{*(*(a1[5] + 8) + 32), *(*(a1[5] + 8) + 40)}];
    v5 = *(a1[5] + 8);
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
  }

  v8 = *(a1[5] + 8);
  if (v4)
  {
    [v4 pureTransformInRoot];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformInvert(&v18, &v17);
  v16 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, *(v8 + 40)), *&v18.a, *(v8 + 32)));
  v9 = [v4 pureGeometry];
  [v9 size];
  v10 = sub_10011ECB4();
  v13 = sub_100121720(v16.f64[0], v16.f64[1], v10, v11, v12);
  v14 = *(a1[6] + 8);
  *(v14 + 32) = v13;
  *(v14 + 40) = v15;
}

void sub_1003422C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034230C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100342350(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1003427C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100342808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034284C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9);
  }

  if (v7)
  {
    v7[2](v7);
  }
}

void sub_100342BF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100342C34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100343334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v52 - 248), 8);
  _Block_object_dispose((v52 - 216), 8);
  _Block_object_dispose((v52 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_10034337C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003433C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100343404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10034341C(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = 1;
  [*(a1 + 32) cancel];
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  if (*(a1 + 56))
  {
    v2 = *(*(a1 + 80) + 8);
    if ((*(v2 + 24) & 1) == 0)
    {
      *(v2 + 24) = 1;
      v3 = [NSError alloc];
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"The user cancelled the import." value:0 table:0];
      v6 = [NSDictionary dictionaryWithObjectsAndKeys:v5, NSLocalizedFailureReasonErrorKey, &off_1018E2B98, @"CRLBoardItemImporterErrorMediaTypeKey", 0];
      v7 = [v3 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:104 userInfo:v6];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003435F4;
      block[3] = &unk_101857538;
      v15 = *(a1 + 88);
      v8 = *(a1 + 40);
      v12 = *(a1 + 48);
      v9 = *(a1 + 56);
      v13 = v7;
      v14 = v9;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
}

uint64_t sub_1003435F4(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = [*(a1 + 32) layerHost];
    [v2 endModalOperationWithToken:*(*(*(a1 + 56) + 8) + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_100343674(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003437BC;
  block[3] = &unk_1018576C8;
  v18 = *(a1 + 96);
  v19 = *(a1 + 112);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = *(a1 + 88);
  v21 = *(a1 + 128);
  v6 = *(a1 + 120);
  v17 = v5;
  v20 = v6;
  v7 = *(a1 + 64);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v3;
  *(&v9 + 1) = v4;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  dispatch_async(v2, block);
}

void sub_1003437BC(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 96) + 8) + 32));
  if (*(*(*(a1 + 104) + 8) + 40) && (*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v2 = [*(a1 + 32) layerHost];
    [v2 endModalOperationWithToken:*(*(*(a1 + 104) + 8) + 40)];
  }

  os_unfair_lock_unlock((*(*(a1 + 96) + 8) + 32));
  v3 = [*(a1 + 40) error];
  if (v3)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v7 = [*(a1 + 40) boardItem];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) boardItem];
    v10 = sub_100014370(v8, v9);

    if ([v10 isAudioOnly] && (objc_msgSend(*(a1 + 48), "boardItems"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectsPassingTest:", &stru_1018575A0), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, objc_msgSend(*(a1 + 48), "boardItems"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13 != v15))
    {
      v40 = +[NSBundle mainBundle];
      v41 = [v40 localizedStringForKey:@"The movie couldn’t be inserted." value:0 table:0];

      v67[0] = NSLocalizedDescriptionKey;
      v67[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
      v68[0] = v41;
      v68[1] = &off_1018E2BB0;
      v42 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
      v43 = [v42 mutableCopy];
      v4 = [[NSError alloc] initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:100 userInfo:v43];

      if (v4)
      {
LABEL_6:
        if (*(a1 + 88))
        {
          os_unfair_lock_lock((*(*(a1 + 96) + 8) + 32));
          v5 = *(*(a1 + 112) + 8);
          if ((*(v5 + 24) & 1) == 0)
          {
            *(v5 + 24) = 1;
            v6 = *(a1 + 88);
            v62[0] = _NSConcreteStackBlock;
            v62[1] = 3221225472;
            v62[2] = sub_1003440A4;
            v62[3] = &unk_1018575C8;
            v65 = *(a1 + 128);
            v63 = *(a1 + 32);
            v64 = v4;
            (*(v6 + 16))(v6, 0, v64, v62);
          }

          os_unfair_lock_unlock((*(*(a1 + 96) + 8) + 32));
        }

        else if (*(a1 + 128) == 1)
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100344180;
          v59[3] = &unk_10183AE28;
          v60 = *(a1 + 32);
          v4 = v4;
          v61 = v4;
          v17 = v59;
          Main = CFRunLoopGetMain();
          CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v17);
          CFRunLoopWakeUp(Main);
        }

        goto LABEL_60;
      }
    }

    else
    {
    }
  }

  v48 = [*(a1 + 40) boardItem];
  if (v48 && (*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    v47 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    v19 = [*(a1 + 32) editingCoordinator];
    v46 = [v19 boardItemFactory];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = [*(a1 + 48) boardItems];
    v21 = [v20 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v56;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v55 + 1) + 8 * i);
          if (!*(a1 + 56) || [*(*(&v55 + 1) + 8 * i) isEqual:?])
          {
            v26 = [*(a1 + 48) interactiveCanvasController];
            v27 = [v26 canvasEditor];
            v28 = [v27 canvasEditorHelper];
            v29 = [v28 canReplaceBoardItem:v25];

            if (v29)
            {
              v30 = [v46 makeDuplicateOfBoardItem:v48];
              [v30 takePropertiesFromReplacedBoardItem:v25];
              v31 = objc_opt_class();
              v32 = sub_100014370(v31, v30);
              if ([v32 isAnimatedImage])
              {
                [v32 setShadow:0];
              }

              v33 = objc_opt_class();
              v34 = sub_100014370(v33, v25);
              if ([v32 isAnimatedImage] && (objc_msgSend(v34, "isAnimatedImage") & 1) == 0)
              {
                [v32 setIsLooping:1];
              }

              [v47 setObject:v30 forKey:v25];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v22);
    }

    if ([v47 count])
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100344190;
      v49[3] = &unk_101857640;
      v49[4] = *(a1 + 48);
      v50 = v47;
      v51 = *(a1 + 56);
      v52 = *(a1 + 32);
      v53 = *(a1 + 64);
      v54 = v48;
      v16 = [v49 copy];
      if (!*(a1 + 88))
      {
        if (*(a1 + 72) != &_dispatch_main_q)
        {
          v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101357394();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013573BC(v35, v36);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101357488();
          }

          v37 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v37);
          }

          v38 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper p_replaceCanvasElementInfo:withInfoFromInfoImporter:interactively:allowedTypes:actionString:queue:completion:]_block_invoke"];
          v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
          [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:448 isFatal:0 description:"expected equality between %{public}s and %{public}s", "dispatch_get_main_queue()", "queue"];
        }

        v16->invoke(v16);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 88))
  {
    os_unfair_lock_lock((*(*(a1 + 96) + 8) + 32));
    v44 = *(*(a1 + 112) + 8);
    if ((*(v44 + 24) & 1) == 0)
    {
      *(v44 + 24) = 1;
      if (!v16)
      {
        v16 = &stru_1018576A0;
      }

      (*(*(a1 + 88) + 16))();
    }

    os_unfair_lock_unlock((*(*(a1 + 96) + 8) + 32));
  }

  v4 = 0;
LABEL_60:
  v45 = [*(a1 + 32) editingCoordinator];
  [v45 resumeCollaborationWithReason:*(a1 + 80)];
}

BOOL sub_100344048(id a1, _TtC8Freeform12CRLBoardItem *a2, BOOL *a3)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  LOBYTE(v3) = [v5 isAudioOnly];
  return v3;
}

void sub_1003440A4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v8 = v1;
    v9 = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100344170;
    v5[3] = &unk_10183AE28;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v5);
    CFRunLoopWakeUp(Main);
  }
}

void sub_100344190(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = [v2 canvasEditor];
  v4 = [*(a1 + 32) boardItems];
  v5 = [v3 selectionPathWithInfos:v4];
  v6 = [*(a1 + 32) interactiveCanvasController];
  v7 = [v6 editorController];
  [v7 setSelectionPath:v5];

  v8 = [*(a1 + 40) crl_allObjects];
  v9 = [NSMutableSet setWithArray:v8];

  v10 = [*(a1 + 40) crl_allObjects];
  v11 = [NSSet setWithArray:v10];
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  *(v12 + 8) = v11;

  if (*(a1 + 48))
  {
    v14 = [*(a1 + 32) boardItems];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10034478C;
    v58[3] = &unk_1018575F0;
    v59 = *(a1 + 48);
    v15 = [v14 objectsPassingTest:v58];

    [v9 unionSet:v15];
  }

  v16 = [*(a1 + 56) commandController];
  v17 = [CRLCanvasCommandSelectionBehavior alloc];
  v18 = [*(a1 + 32) interactiveCanvasController];
  v19 = [v18 canvasEditor];
  v48 = v9;
  v20 = [(CRLCanvasCommandSelectionBehavior *)v17 initWithCanvasEditor:v19 type:3 constructedInfos:v9];

  v46 = v20;
  v47 = v16;
  [v16 openGroupWithSelectionBehavior:v20];
  v21 = +[NSMutableArray array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = [*(a1 + 32) boardItems];
  v23 = [v22 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(a1 + 32) p_commandsToSwapConnectionsFromInfo:*(*(&v54 + 1) + 8 * i) infoMap:*(a1 + 40)];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v51;
          do
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v51 != v30)
              {
                objc_enumerationMutation(v27);
              }

              [v21 addObject:*(*(&v50 + 1) + 8 * j)];
            }

            v29 = [v27 countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v29);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v24);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1003447B0;
  v49[3] = &unk_101857618;
  v32 = *(a1 + 40);
  v49[4] = *(a1 + 32);
  [v32 crl_enumerateKeysAndObjectsUsingBlock:v49];
  if ([v21 count])
  {
    v33 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v21];
    [v47 enqueueCommand:v33];
  }

  v34 = *(a1 + 64);
  if (v34)
  {
    v35 = v34;
    v36 = v48;
    v37 = v46;
LABEL_30:
    [v47 setCurrentGroupActionString:v35];

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = +[NSBundle mainBundle];
    v35 = [v38 localizedStringForKey:@"Replace with Image" value:0 table:@"UndoStrings"];
LABEL_28:
    v36 = v48;
    v37 = v46;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = objc_opt_class();
    v38 = sub_100014370(v39, *(a1 + 72));
    v40 = [v38 isAudioOnly];
    v41 = +[NSBundle mainBundle];
    v42 = v41;
    if (v40)
    {
      v43 = @"Replace with Audio";
    }

    else
    {
      v43 = @"Replace with Video";
    }

    v35 = [v41 localizedStringForKey:v43 value:0 table:@"UndoStrings"];

    goto LABEL_28;
  }

  objc_opt_class();
  v36 = v48;
  v37 = v46;
  if (objc_opt_isKindOfClass())
  {
    v44 = +[NSBundle mainBundle];
    v38 = v44;
    v45 = @"Replace with File";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_31;
    }

    v44 = +[NSBundle mainBundle];
    v38 = v44;
    v45 = @"Replace with 3D Object";
  }

  v35 = [v44 localizedStringForKey:v45 value:0 table:@"UndoStrings"];
LABEL_29:

  if (v35)
  {
    goto LABEL_30;
  }

LABEL_31:
  [v47 closeGroup];
}

void sub_1003447B0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v9 = [v4 interactiveCanvasController];
  v7 = [v9 canvasEditor];
  v8 = [v7 canvasEditorHelper];
  [v8 replaceBoardItem:v6 withBoardItem:v5];
}

void sub_10034484C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100344890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003448D8(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003449C4;
    v4[3] = &unk_10183AE28;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v4);
    CFRunLoopWakeUp(Main);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), 0, *(a1 + 40), &stru_101857710);
}

uint64_t sub_100344AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) cancel];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100345934(uint64_t a1)
{
  v9 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1EFu >> v9))
  {
    return qword_101464D48[v9];
  }

  [CRLAssertionHandler _atomicIncrementAssertCount:v6];
  if (qword_101AD5A10 != -1)
  {
    sub_1013574B0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013574C4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101357558();
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v11);
  }

  v12 = [NSString stringWithUTF8String:"CRLCanvasKnobTag CRLCanvasKnobTagByRotating270Degrees(CRLCanvasKnobTag)"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:59 isFatal:0 description:"Unexpected knob tag"];

  return 0;
}

void sub_100345A80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100345AC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100345B0C(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_101464D90[a1 - 1];
  }
}

uint64_t sub_100345B30(uint64_t a1)
{
  v9 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1EFu >> v9))
  {
    return qword_101464DE8[v9];
  }

  [CRLAssertionHandler _atomicIncrementAssertCount:v6];
  if (qword_101AD5A10 != -1)
  {
    sub_101357580();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101357594();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101357628();
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v11);
  }

  v12 = [NSString stringWithUTF8String:"CRLCanvasKnobTag CRLCanvasKnobTagByRotating90Degrees(CRLCanvasKnobTag)"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:88 isFatal:0 description:"Unexpected knob tag"];

  return 0;
}

void sub_100345C7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100345CC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100345D04(double a1)
{
  if (a1 > 22.5 && a1 <= 67.5)
  {
    return 7;
  }

  if (a1 > 67.5 && a1 <= 112.5)
  {
    return 4;
  }

  if (a1 > 112.5 && a1 <= 157.5)
  {
    return 1;
  }

  if (a1 > 157.5 && a1 <= 202.5)
  {
    return 2;
  }

  if (a1 > 202.5 && a1 <= 247.5)
  {
    return 3;
  }

  if (a1 > 247.5 && a1 <= 292.5)
  {
    return 6;
  }

  if (a1 > 292.5 && a1 <= 337.5)
  {
    return 9;
  }

  if (a1 >= 22.5 && a1 <= 337.5)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_100345E1C(uint64_t a1, double a2)
{
  v3 = sub_1004C31F4(a2 / 90.0);
  sub_1001208E0(v3 * 90.0);
  if (v4 == 90.0 || fabs(v4 + -90.0) < 0.00999999978)
  {

    return sub_100345B30(a1);
  }

  else if (v4 == 180.0 || fabs(v4 + -180.0) < 0.00999999978)
  {

    return sub_100345B0C(a1);
  }

  else if (v4 == 270.0 || fabs(v4 + -270.0) < 0.00999999978)
  {

    return sub_100345934(a1);
  }

  else
  {
    return a1;
  }
}

double sub_100345F44(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ((a1 - 1) > 8)
  {
    return CGPointZero.x;
  }

  v9 = 2 - (a1 - 1) % 3u;
  if (a4 >= 0.0)
  {
    v9 = (a1 - 1) % 3u;
  }

  if (a5 >= 0.0)
  {
    v10 = (a1 - 1) / 3u;
  }

  else
  {
    v10 = 2 - (a1 - 1) / 3u;
  }

  v11 = (*(&off_101857800 + v9))();
  (*(&off_101857818 + v10))(a2, a3, a4, a5);
  return v11;
}

uint64_t sub_100346034(uint64_t a1)
{
  v1 = a1;
  v2 = a1 - 1;
  if (a1 - 1) < 0xC && ((0xFEFu >> v2))
  {
    return qword_101464E30[v2];
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101357650();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101357664();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101357714();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"CRLCanvasKnobTag CRLCanvasKnobTagWithFlip(CRLCanvasKnobTag)"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:238 isFatal:0 description:"don't know how to flip knob tag %tu", v1];

  return v1;
}

void sub_100346190(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003461D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003463FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100346440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100347EEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100347F30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034859C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1003485B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_1003487A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id sub_1003487D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained crlaxCustomRotorResultForRotor:v5 predicate:v3];

  return v6;
}

void sub_1003489EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100348A08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_1003492F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100349308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100349320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 canvas];
  v5 = [v8 repForLayout:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

double sub_100349760(char a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3 < 0.02;
  }

  v4 = v3 || a2 == 3;
  if (v4 && (a1 & 1) != 0)
  {
    return 0.05;
  }

  v6 = a3;
  return (fminf(fmaxf(v6, 0.0), 2.0) * 1.25 * 0.5 + 0.25) * 14.0;
}

void sub_100349A00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100349A44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100349CD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100349D14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034A0FC(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034A13C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034A180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034A3CC(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034A40C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034A450(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034B214(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034B254(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034B294(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034B2D4(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034B314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034B358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034B39C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034BB4C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034BB8C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034C1CC(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034C20C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034D11C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034D15C(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034D3F0(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034D880(id a1)
{
  v1 = sub_1004BD804("CRLDragGRCat");
  v2 = off_1019EF740;
  off_1019EF740 = v1;
}

void sub_10034DD00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034DD44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10034E270(uint64_t a1)
{
  result = [*(a1 + 32) p_allowedToEditChildren];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10034E894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034E8D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034EEC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034EF0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034F678(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034F6BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034FCF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10034FD3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100350210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11 != v12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003503C8(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, char a6)
{
  v11 = a2;
  v12 = a4;
  *a1 = &off_101857E48;
  *(a1 + 56) = 0;
  *(a1 + 256) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 16) = v11;
  *(a1 + 24) = [v11 wpKind];
  *(a1 + 8) = a3;
  *(a1 + 30) = 0;
  *(a1 + 64) = 0;
  *(a1 + 27) = a5;
  *(a1 + 28) = a6;
  v13 = *(a1 + 216);
  *(a1 + 216) = 0;

  v14 = *(a1 + 224);
  *(a1 + 224) = v12;
  v15 = v12;

  v16 = *(a1 + 256);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;

  return a1;
}

void sub_1003504A8(_Unwind_Exception *a1)
{
  v5 = *(v2 + 240);
  if (v5)
  {
    sub_1000F532C(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003504FC(uint64_t a1)
{
  *a1 = &off_101857E48;
  if (*(a1 + 31))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135862C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358640();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013586C8();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v3 = [NSString stringWithUTF8String:"virtual CRLWPCoreTextTypesetter::~CRLWPCoreTextTypesetter()"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:392 isFatal:0 description:"Didn't end paragraph layout"];
  }

  if (*(a1 + 30) == 1)
  {
    (*(*a1 + 24))(a1);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    sub_1000F532C(v5);
  }

  return a1;
}

void sub_100350700(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1000C8ECC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10035070C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100350750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100350798(uint64_t a1)
{
  sub_1003504FC(a1);

  operator delete();
}

uint64_t sub_1003507D0(uint64_t a1)
{
  if ((*(a1 + 31) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013586F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358704();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135878C();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v3 = [NSString stringWithUTF8String:"CTTypesetterRef CRLWPCoreTextTypesetter::pCTTypesetter() const"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:399 isFatal:0 description:"paragraph must be set up before requesting typesetter"];
  }

  return sub_1005B75C8(*(a1 + 232));
}

void sub_10035096C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003509B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100350A00(uint64_t a1)
{
  if (*(a1 + 31) == 1)
  {
    sub_100350A38(a1);
  }

  *(a1 + 30) = 0;
}

void sub_100350A38(uint64_t a1)
{
  if (*(a1 + 31) == 1)
  {
    v3 = *(a1 + 240);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    if (v3)
    {
      sub_1000F532C(v3);
    }

    v4 = *(a1 + 112);
    *(a1 + 112) = 0;

    *(a1 + 31) = 0;
    v5 = *(a1 + 56);
    *(a1 + 56) = 0;

    v6 = *(a1 + 216);
    *(a1 + 216) = 0;
  }
}

uint64_t sub_100350AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358B40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101358B54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358BDC();
    }

    v105 = off_1019EDA68;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d nil state in paragraph layout", v106, v107, v108, v109, v110, v111, v112, "CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)");
    v113 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
    v114 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v113 file:v114 lineNumber:430 isFatal:1 description:"nil state in paragraph layout"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v115, v116);
    abort();
  }

  v3 = sub_10011C2A4(a2);

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013587B4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1013587C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358864();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v6);
    }

    v7 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:431 isFatal:0 description:"invalid nil value for '%{public}s'", "state->paragraphStyle()"];
  }

  if (*(a1 + 31) == 1)
  {
    sub_100350A38(a1);
  }

  *(a1 + 31) = 1;
  *(a1 + 32) = *(a2 + 96);
  v9 = *(a2 + 16) - *(a1 + 32);
  if (v9 >= *(a1 + 40))
  {
    v9 = *(a1 + 40);
  }

  *(a1 + 40) = v9;
  if (*(a2 + 351) == 1 && (*(a2 + 349) & 1) == 0)
  {
    v10 = *(a2 + 352);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 72) = v10 & 1;
  *(a1 + 29) = 0;
  v11 = variable initialization expression of CRLDocumentSessionAnalyticsManager.totalEventKeyCount();
  *(a1 + 80) = v11;
  *(a1 + 88) = sub_100282A10(v11);
  v12 = *(a1 + 80);
  if (v12 == 6)
  {
    *(a1 + 72) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 96) = v12;
  v13 = sub_10011C2B4(a2);
  v120 = [v13 scaleTextPercent];

  v14 = [[CRLWPTypesetterTextSource alloc] initWithSource:*(a1 + 16) subRange:*(a1 + 32), *(a1 + 40)];
  v15 = *(a1 + 56);
  *(a1 + 56) = v14;

  v16 = a1;
  *(a1 + 48) = [*(a1 + 56) length];
  v17 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  if (v17)
  {
    sub_1000F532C(v17);
  }

  v18 = *(a1 + 224);
  if (v18)
  {
    if (v120 == 100 && !*(a1 + 24) && *(a2 + 16) == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v18 cachedTypesetterForParagraphIdentifier:a3];
      v19 = *buf;
      *&buf[8] = 0;
      *buf = 0;
      v16 = a1;
      v20 = *(a1 + 240);
      *(a1 + 232) = v19;
      if (v20)
      {
        sub_1000F532C(v20);
        if (*&buf[8])
        {
          sub_1000F532C(*&buf[8]);
        }
      }
    }
  }

  v21 = *(v16 + 232);
  if (!v21)
  {
    goto LABEL_47;
  }

  if (*(v16 + 48) == (*(v21 + 40) - *(v21 + 32)) >> 1)
  {
    goto LABEL_42;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135888C();
  }

  v22 = off_1019EDA68;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1013588B4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135893C();
  }

  v23 = off_1019EDA68;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = +[CRLAssertionHandler packedBacktraceString];
    sub_101330248(v24);
  }

  v25 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
  [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:486 isFatal:0 description:"cached paragraph typesetter has wrong char count"];

  v16 = a1;
  v21 = *(a1 + 232);
  if (*(a1 + 48) == (*(v21 + 40) - *(v21 + 32)) >> 1)
  {
LABEL_42:
    sub_1005B7814(v21, *(v16 + 56));
    v27 = a1;
    goto LABEL_43;
  }

  [*(a1 + 224) clearCache];
  v27 = a1;
  v29 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  if (!v29)
  {
LABEL_47:
    operator new();
  }

  sub_1000F532C(v29);
LABEL_43:
  v28 = v27[29];
  if (!v28)
  {
    goto LABEL_47;
  }

  v31 = v28 + 32;
  v30 = *(v28 + 32);
  if (*(v31 + 8) == v30)
  {
    v30 = 0;
  }

  v27[8] = v30;
  v123 = v27[6];
  v32 = [[NSMutableArray alloc] initWithCapacity:100];
  v33 = *(a1 + 104);
  *(a1 + 104) = v32;

  objc_storeStrong((a1 + 112), *(a1 + 104));
  v119 = sub_10011C364(a2);
  v118 = +[(CRLWPRangeArray *)CRLWPMutableRangeArray];
  v34 = 0;
  v35 = a1;
  do
  {
    v36 = [*(v35 + 56) characterStyleAtCharIndex:v34 effectiveRange:&v129];
    v124 = v34;
    v37 = sub_1002409E4(a2 + 24);
    v38 = v37 == 0;

    if (!v38)
    {
      v39 = [*(a1 + 56) charRangeMappedToStorage:{v124, 0}];
      v40 = sub_1002409E4(a2 + 24);
      v41 = [v40 characterStyleAtCharIndex:v39 effectiveRange:0];

      v36 = v41;
    }

    v42 = sub_10011C2A4(a2);
    v43 = v42 == 0;

    if (v43)
    {
      v44 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101358A50();
      }

      v45 = off_1019EDA68;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110146;
        *&buf[4] = v44;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        *&buf[28] = 1024;
        *&buf[30] = 556;
        *&buf[34] = 2082;
        *&buf[36] = "state->paragraphStyle()";
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101358A78();
      }

      v46 = off_1019EDA68;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v100 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v44;
        *&buf[8] = 2114;
        *&buf[10] = v100;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v47 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
      v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:556 isFatal:0 description:"invalid nil value for '%{public}s'", "state->paragraphStyle()"];
    }

    v49 = sub_10011C2A4(a2);
    v50 = sub_100352644(v49, v36, v120, *(a2 + 349), 1);
    v51 = [v50 mutableCopy];

    location = v129.location;
    v53 = v129.length + v129.location;
    if (v123 < v129.length + v129.location)
    {
      v53 = v123;
    }

    if (v129.location <= v124)
    {
      location = v124;
    }

    v129.location = location;
    v129.length = v53 - location;
    v54 = [v51 objectForKeyedSubscript:kCTFontAttributeName];

    v55 = sub_10011C320(a2);
    v56 = v55 == 0;

    if (v56)
    {
      v60 = 0;
      v58 = a1;
    }

    else
    {
      v57 = sub_10011C320(a2);
      v58 = a1;
      v59 = v57;
      if (v57)
      {
        [v51 setObject:objc_msgSend(v57 forKeyedSubscript:{"CGColor"), kCTForegroundColorAttributeName}];
        [v51 removeObjectForKey:@"CRLWPCharacterFillAttribute"];
        [v51 removeObjectForKey:@"CRLWPCharacterStrokeAttribute"];
        v60 = v59;
        [v51 removeObjectForKey:kCTForegroundColorFromContextAttributeName];
      }

      else
      {
        v60 = 0;
      }
    }

    sub_100352704(v58, v51, &v129, v119);
    if (v36)
    {
      v61 = *(a2 + 349);
      v62 = objc_opt_class();
      v63 = [v36 valueForProperty:28];
      v64 = sub_100014370(v62, v63);
      v65 = [v64 intValue];

      if (v65 != -1 && v65 != v61)
      {
        if (v129.length)
        {
          v66 = 0;
          v67 = v129.location;
          v68 = 2 * v129.location;
          while (sub_10027E3D4(*(*(a1 + 64) + v68 + 2 * v66)))
          {
            if (++v66 >= v129.length)
            {
              goto LABEL_81;
            }
          }

          if (v66)
          {
LABEL_81:
            v129.length = v66;
            goto LABEL_86;
          }

          length = v129.length;
          if (v129.length >= 2)
          {
            do
            {
              if (!sub_10027E3D4(*(*(a1 + 64) + 2 * v67 + 2 * length - 2)))
              {
                break;
              }

              length = v129.length - 1;
              v129.length = length;
            }

            while (length > 1);
          }
        }

        v70 = [NSNumber numberWithInt:v65 == 1];
        v134 = v70;
        v71 = [NSArray arrayWithObjects:&v134 count:1];

        [v51 setObject:v71 forKeyedSubscript:kCTWritingDirectionAttributeName];
      }
    }

LABEL_86:
    v72 = sub_10011C2A4(a2);
    v73 = sub_1002812E4(v36, v72, 0x12uLL);

    if (v73)
    {
      if ([v73 isEnabled])
      {
        v74 = 4;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v74 = 0;
    }

    v121 = [v51 objectForKeyedSubscript:@"CRLWPCharacterStrokeAttribute"];
    v122 = [v51 objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
    v75 = [v51 objectForKeyedSubscript:@"CRLWPInvisibleTextAttribute"];
    v76 = v75;
    v77 = v74 | 8;
    if (!v121)
    {
      v77 = v74;
    }

    if (v122)
    {
      v77 |= 0x10uLL;
    }

    if (v75)
    {
      v78 = v77 | 0x20;
    }

    else
    {
      v78 = v77;
    }

    v79 = objc_opt_new();
    [v79 setRunLength:v129.length];
    [v79 setCharIndex:v124];
    [v79 setCharacterStyle:v36];
    [v79 setCtFont:v54];
    [v79 setAttributes:v51];
    [v79 setFlags:v78];
    sub_10028234C(v54, v128);
    *&buf[32] = v128[2];
    v131 = v128[3];
    v132 = v128[4];
    v133 = v128[5];
    *buf = v128[0];
    *&buf[16] = v128[1];
    [v79 setFontHeightInfo:buf];
    v80 = *(a1 + 104);
    if (!v80)
    {
      v81 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101358AA0();
      }

      v82 = off_1019EDA68;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110146;
        *&buf[4] = v81;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        *&buf[28] = 1024;
        *&buf[30] = 832;
        *&buf[34] = 2082;
        *&buf[36] = "_mutableStyleRunArray";
        _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101358AC8();
      }

      v83 = off_1019EDA68;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        v101 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v81;
        *&buf[8] = 2114;
        *&buf[10] = v101;
        _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v84 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
      v85 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v84 file:v85 lineNumber:832 isFatal:0 description:"invalid nil value for '%{public}s'", "_mutableStyleRunArray"];

      v80 = *(a1 + 104);
    }

    if (![v80 count] || (objc_msgSend(*(a1 + 104), "lastObject"), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v86, "coalesceWith:", v79), v86, (v87 & 1) == 0))
    {
      [*(a1 + 104) addObject:v79];
    }

    v88 = sub_10011C2A4(a2);
    v89 = sub_10028139C(v36, v88, 2, 0);

    v90 = v129.length;
    if (v89 == 1)
    {
      sub_100353450(a1, v124, v129.length);
    }

    else if (v89 == 3)
    {
      v91 = sub_10011C2A4(a2);
      v92 = sub_10028139C(v36, v91, 3, 0) == 1;

      if (v92)
      {
        [v118 addRange:{v124, v90}];
      }

      else
      {
        sub_100353A20(a1, v124, v90);
      }
    }

    else if (v89 == 2 && (v78 & 1) == 0 && v129.length)
    {
      sub_100352988(a1, v124, v129.length);
    }

    v93 = v129.length + v129.location;
    if (v129.length + v129.location > v123)
    {
      v94 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101358AF0();
      }

      v95 = off_1019EDA68;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v94;
        *&buf[8] = 2082;
        *&buf[10] = "CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm";
        *&buf[28] = 1024;
        *&buf[30] = 860;
        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad curCharIndex", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101358B18();
      }

      v96 = off_1019EDA68;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v99 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        *&buf[4] = v94;
        *&buf[8] = 2114;
        *&buf[10] = v99;
        _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v97 = [NSString stringWithUTF8String:"CRLWPTypesetterParagraphSetupResult CRLWPCoreTextTypesetter::beginParagraphLayout(const CRLWPLayoutState *, CRLWPAttributeIndex)"];
      v98 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCoreTextTypesetter.mm"];
      [CRLAssertionHandler handleFailureInFunction:v97 file:v98 lineNumber:860 isFatal:0 description:"Bad curCharIndex"];
    }

    v34 = v93;
    v35 = a1;
  }

  while (v93 < v123);
  v102 = *(a1 + 104);
  *(a1 + 104) = 0;

  v127[0] = _NSConcreteStackBlock;
  v127[1] = 3221225472;
  v127[2] = sub_100353F1C;
  v127[3] = &unk_1018580B0;
  v127[4] = a1;
  [v118 enumerateRanges:v127];
  if (*(a2 + 400) == 4)
  {
    v103 = *(a2 + 349);
  }

  else
  {
    v103 = *(a2 + 400);
  }

  return v103;
}