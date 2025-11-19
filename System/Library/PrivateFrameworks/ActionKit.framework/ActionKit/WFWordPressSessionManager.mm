@interface WFWordPressSessionManager
- (WFWordPressSessionManager)initWithSessionConfiguration:(id)a3;
- (void)createPostWithContent:(id)a3 completionHandler:(id)a4;
- (void)createPostWithTitle:(id)a3 content:(id)a4 type:(id)a5 date:(id)a6 format:(id)a7 status:(id)a8 allowingComments:(BOOL)a9 name:(id)a10 excerpt:(id)a11 template:(id)a12 tags:(id)a13 categories:(id)a14 thumbnailId:(id)a15 customFields:(id)a16 completionHandler:(id)a17;
- (void)getBlogsWithCompletionHandler:(id)a3;
- (void)getPageTemplatesWithCompletionHandler:(id)a3;
- (void)getPost:(id)a3 completionHandler:(id)a4;
- (void)getPostFormatsWithCompletionHandler:(id)a3;
- (void)getPostStatusesWithCompletionHandler:(id)a3;
- (void)getPostTypesWithCompletionHandler:(id)a3;
- (void)getTermsForTaxonomy:(id)a3 completionHandler:(id)a4;
- (void)sendRequest:(id)a3 completionHandler:(id)a4;
- (void)sendRequestWithMethod:(id)a3 parameters:(id)a4 completionHandler:(id)a5;
- (void)uploadFile:(id)a3 completionHandler:(id)a4;
@end

@implementation WFWordPressSessionManager

- (void)sendRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFWordPressSessionManager *)self session];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__WFWordPressSessionManager_sendRequest_completionHandler___block_invoke;
  v11[3] = &unk_278C22268;
  v12 = v6;
  v9 = v6;
  v10 = [v8 dataTaskWithRequest:v7 completionHandler:v11];

  [v10 resume];
}

void __59__WFWordPressSessionManager_sendRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{200, 100}];
  v11 = [v8 statusCode];
  if ([v7 length] && (v12 = objc_msgSend(v10, "containsIndex:", v11), !v9) && (v12 & 1) != 0)
  {
    v13 = [[WPXMLRPCDecoder alloc] initWithData:v7];
    v14 = [(WPXMLRPCDecoder *)v13 object];
    v9 = [(WPXMLRPCDecoder *)v13 error];

    if (v9)
    {
      v9 = [(WPXMLRPCDecoder *)v13 error];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      v16 = [v15 objectForKeyedSubscript:@"faultCode"];

      if (v16)
      {
        v17 = objc_opt_new();
        v18 = [v15 objectForKeyedSubscript:@"faultString"];
        [v17 setValue:v18 forKey:*MEMORY[0x277CCA450]];

        v19 = MEMORY[0x277CCA9B8];
        v20 = [v15 objectForKeyedSubscript:@"faultCode"];
        v21 = [v19 errorWithDomain:@"WFWordPressErrorDomain" code:objc_msgSend(v20 userInfo:{"integerValue"), v17}];

        v14 = 0;
        v9 = v21;
      }

      else
      {
        v14 = v15;
      }
    }

    v31 = *(a1 + 32);
    if (v31)
    {
      (*(v31 + 16))(v31, v14, v9);
    }
  }

  else
  {
    if (!v9)
    {
      v22 = [v8 statusCode];
      v23 = MEMORY[0x277CCA9B8];
      if (v22 == 404)
      {
        v35 = *MEMORY[0x277CCA450];
        v24 = WFLocalizedString(@"The specified blog URL was invalid.");
        v36[0] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v9 = [v23 errorWithDomain:@"WFWordPressErrorDomain" code:1 userInfo:v25];
      }

      else
      {
        v26 = *MEMORY[0x277CCA738];
        v33 = *MEMORY[0x277CCA450];
        v27 = MEMORY[0x277CCACA8];
        v24 = WFLocalizedString(@"The WordPress request failed (%@).");
        v25 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:v11];
        v28 = [v27 stringWithFormat:v24, v25, v33];
        v34 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v9 = [v23 errorWithDomain:v26 code:-1 userInfo:v29];
      }
    }

    v30 = *(a1 + 32);
    if (v30)
    {
      (*(v30 + 16))(v30, 0, v9);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestWithMethod:(id)a3 parameters:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[WPXMLRPCEncoder alloc] initWithMethod:v10 andParameters:v9];

  v17 = 0;
  v12 = [(WPXMLRPCEncoder *)v11 dataEncodedWithError:&v17];
  v13 = v17;
  if (v13)
  {
    if (v8)
    {
      v8[2](v8, 0, v13);
    }
  }

  else
  {
    v14 = MEMORY[0x277CBAB50];
    v15 = [(WFWordPressSessionManager *)self endpointURL];
    v16 = [v14 requestWithURL:v15];

    [v16 _setNonAppInitiated:1];
    [v16 setHTTPMethod:@"POST"];
    [v16 setHTTPBody:v12];
    [v16 setValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    [(WFWordPressSessionManager *)self sendRequest:v16 completionHandler:v8];
  }
}

- (void)uploadFile:(id)a3 completionHandler:(id)a4
{
  v51[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 inputStream];
  v50[0] = @"name";
  v9 = [v7 filename];
  v51[0] = v9;
  v50[1] = @"type";
  v10 = [v7 wfType];

  v11 = [v10 MIMEType];
  v50[2] = @"bits";
  v51[1] = v11;
  v51[2] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

  v13 = [(WFWordPressSessionManager *)self blogId];
  v14 = v13;
  v15 = &unk_28509B078;
  if (v13)
  {
    v15 = v13;
  }

  v49[0] = v15;
  v16 = [(WFWordPressSessionManager *)self username];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2850323E8;
  }

  v49[1] = v18;
  v19 = [(WFWordPressSessionManager *)self password];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_2850323E8;
  }

  v49[2] = v21;
  v49[3] = v12;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];

  v23 = [[WPXMLRPCEncoder alloc] initWithMethod:@"wp.uploadFile" andParameters:v22];
  v24 = MEMORY[0x277CFC538];
  v25 = [MEMORY[0x277CCAD78] UUID];
  v26 = [v25 UUIDString];
  v27 = [v24 createTemporaryFileWithFilename:v26];

  v28 = [v27 path];
  v48 = 0;
  [(WPXMLRPCEncoder *)v23 encodeToFile:v28 error:&v48];
  v29 = v48;

  if (v29)
  {
    v6[2](v6, 0, v29);
  }

  else
  {
    v30 = [MEMORY[0x277CCAA00] defaultManager];
    [v27 path];
    v31 = v44 = v8;
    v47 = 0;
    [v30 attributesOfItemAtPath:v31 error:&v47];
    v32 = v43 = v22;
    v29 = v47;
    [v32 objectForKey:*MEMORY[0x277CCA1C0]];
    v33 = v42 = v23;

    v34 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v27];
    v35 = MEMORY[0x277CBAB50];
    [(WFWordPressSessionManager *)self endpointURL];
    v36 = v6;
    v38 = v37 = v12;
    v39 = [v35 requestWithURL:v38];

    v12 = v37;
    v6 = v36;
    [v39 _setNonAppInitiated:1];
    [v39 setHTTPMethod:@"POST"];
    [v39 setHTTPBodyStream:v34];
    [v39 setValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v33, "unsignedLongLongValue")];
    [v39 setValue:v40 forHTTPHeaderField:@"Content-Length"];

    v22 = v43;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58__WFWordPressSessionManager_uploadFile_completionHandler___block_invoke;
    v45[3] = &unk_278C1DA38;
    v46 = v36;
    [(WFWordPressSessionManager *)self sendRequest:v39 completionHandler:v45];

    v8 = v44;
    v23 = v42;
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __58__WFWordPressSessionManager_uploadFile_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = 0;
    v8 = [MEMORY[0x277D7C070] modelOfClass:objc_opt_class() fromJSONDictionary:v5 error:&v9];
    v7 = v9;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getPost:(id)a3 completionHandler:(id)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFWordPressSessionManager *)self blogId];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_28509B078;
  }

  v23[0] = v10;
  v11 = [(WFWordPressSessionManager *)self username];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v23[1] = v13;
  v14 = [(WFWordPressSessionManager *)self password];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2850323E8;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = &unk_28509B078;
  }

  v23[2] = v16;
  v23[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__WFWordPressSessionManager_getPost_completionHandler___block_invoke;
  v21[3] = &unk_278C1DA38;
  v22 = v6;
  v19 = v6;
  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getPost" parameters:v18 completionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __55__WFWordPressSessionManager_getPost_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = 0;
    v8 = [MEMORY[0x277D7C070] modelOfClass:objc_opt_class() fromJSONDictionary:v5 error:&v9];
    v7 = v9;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)createPostWithContent:(id)a3 completionHandler:(id)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFWordPressSessionManager *)self blogId];
  v9 = v8;
  v10 = &unk_28509B078;
  if (v8)
  {
    v10 = v8;
  }

  v23[0] = v10;
  v11 = [(WFWordPressSessionManager *)self username];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v23[1] = v13;
  v14 = [(WFWordPressSessionManager *)self password];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2850323E8;
  }

  v17 = MEMORY[0x277CBEC10];
  if (v7)
  {
    v17 = v7;
  }

  v23[2] = v16;
  v23[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__WFWordPressSessionManager_createPostWithContent_completionHandler___block_invoke;
  v21[3] = &unk_278C1DA38;
  v22 = v6;
  v19 = v6;
  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.newPost" parameters:v18 completionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __69__WFWordPressSessionManager_createPostWithContent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)createPostWithTitle:(id)a3 content:(id)a4 type:(id)a5 date:(id)a6 format:(id)a7 status:(id)a8 allowingComments:(BOOL)a9 name:(id)a10 excerpt:(id)a11 template:(id)a12 tags:(id)a13 categories:(id)a14 thumbnailId:(id)a15 customFields:(id)a16 completionHandler:(id)a17
{
  v45 = a17;
  v38 = a16;
  v44 = a15;
  v21 = a14;
  v43 = a12;
  v42 = a11;
  v41 = a10;
  v40 = a8;
  v39 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [a13 if_compactMap:&__block_literal_global_7757];
  v27 = [v21 if_compactMap:&__block_literal_global_208];

  v28 = objc_opt_new();
  if ([v26 count])
  {
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  [v28 setValue:v29 forKey:@"post_tag"];
  if ([v27 count])
  {
    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  [v28 setValue:v30 forKey:@"category"];
  v31 = objc_opt_new();
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __179__WFWordPressSessionManager_createPostWithTitle_content_type_date_format_status_allowingComments_name_excerpt_template_tags_categories_thumbnailId_customFields_completionHandler___block_invoke_3;
  v47[3] = &unk_278C1ADC0;
  v48 = v31;
  v32 = v31;
  [v38 enumerateKeysAndObjectsUsingBlock:v47];

  v33 = objc_opt_new();
  [v33 setValue:v25 forKey:@"post_title"];

  [v33 setValue:v24 forKey:@"post_content"];
  v34 = [v23 name];

  [v33 setValue:v34 forKey:@"post_type"];
  [v33 setValue:v22 forKey:@"post_date_gmt"];

  [v33 setValue:v39 forKey:@"post_format"];
  [v33 setValue:v40 forKey:@"post_status"];

  [v33 setValue:v41 forKey:@"post_name"];
  [v33 setValue:v42 forKey:@"post_excerpt"];

  [v33 setValue:v43 forKey:@"post_template"];
  [v33 setValue:v28 forKey:@"terms_names"];
  [v33 setValue:v44 forKey:@"post_thumbnail"];

  [v33 setValue:v32 forKey:@"custom_fields"];
  if (a9)
  {
    v35 = @"open";
  }

  else
  {
    v35 = @"closed";
  }

  [v33 setValue:v35 forKey:@"comment_status"];
  [(WFWordPressSessionManager *)self createPostWithContent:v33 completionHandler:v45];
}

void __179__WFWordPressSessionManager_createPostWithTitle_content_type_date_format_status_allowingComments_name_excerpt_template_tags_categories_thumbnailId_customFields_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10[0] = @"key";
  v10[1] = @"value";
  v11[0] = a2;
  v11[1] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

id __179__WFWordPressSessionManager_createPostWithTitle_content_type_date_format_status_allowingComments_name_excerpt_template_tags_categories_thumbnailId_customFields_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __179__WFWordPressSessionManager_createPostWithTitle_content_type_date_format_status_allowingComments_name_excerpt_template_tags_categories_thumbnailId_customFields_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getPageTemplatesWithCompletionHandler:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWordPressSessionManager *)self blogId];
  v6 = v5;
  v7 = &unk_28509B078;
  if (v5)
  {
    v7 = v5;
  }

  v8 = [(WFWordPressSessionManager *)self username];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2850323E8;
  }

  v16[1] = v10;
  v11 = [(WFWordPressSessionManager *)self password];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getPageTemplates" parameters:v14 completionHandler:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)getPostStatusesWithCompletionHandler:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWordPressSessionManager *)self blogId];
  v6 = v5;
  v7 = &unk_28509B078;
  if (v5)
  {
    v7 = v5;
  }

  v8 = [(WFWordPressSessionManager *)self username];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2850323E8;
  }

  v16[1] = v10;
  v11 = [(WFWordPressSessionManager *)self password];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getPostStatusList" parameters:v14 completionHandler:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)getPostFormatsWithCompletionHandler:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWordPressSessionManager *)self blogId];
  v6 = v5;
  v7 = &unk_28509B078;
  if (v5)
  {
    v7 = v5;
  }

  v8 = [(WFWordPressSessionManager *)self username];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2850323E8;
  }

  v16[1] = v10;
  v11 = [(WFWordPressSessionManager *)self password];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getPostFormats" parameters:v14 completionHandler:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)getPostTypesWithCompletionHandler:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWordPressSessionManager *)self blogId];
  v6 = v5;
  v7 = &unk_28509B078;
  if (v5)
  {
    v7 = v5;
  }

  v19[0] = v7;
  v8 = [(WFWordPressSessionManager *)self username];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2850323E8;
  }

  v19[1] = v10;
  v11 = [(WFWordPressSessionManager *)self password];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v19[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__WFWordPressSessionManager_getPostTypesWithCompletionHandler___block_invoke;
  v17[3] = &unk_278C1DA38;
  v18 = v4;
  v15 = v4;
  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getPostTypes" parameters:v14 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __63__WFWordPressSessionManager_getPostTypesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = a1;
    v7 = v5;
    v8 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        v14 = v6;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * v13);
          v16 = MEMORY[0x277D7C070];
          v17 = objc_opt_class();
          v18 = [v9 objectForKeyedSubscript:v15];
          v24 = v14;
          v19 = [v16 modelOfClass:v17 fromJSONDictionary:v18 error:&v24];
          v6 = v24;

          [v8 setValue:v19 forKey:v15];
          ++v13;
          v14 = v6;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v20 = [v8 copy];
    a1 = v23;
  }

  else
  {

    v20 = 0;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    (*(v21 + 16))(v21, v20, v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)getTermsForTaxonomy:(id)a3 completionHandler:(id)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFWordPressSessionManager *)self blogId];
  v9 = v8;
  v10 = &unk_28509B078;
  if (v8)
  {
    v10 = v8;
  }

  v22[0] = v10;
  v11 = [(WFWordPressSessionManager *)self username];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2850323E8;
  }

  v22[1] = v13;
  v14 = [(WFWordPressSessionManager *)self password];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2850323E8;
  }

  v22[2] = v16;
  v22[3] = v7;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__WFWordPressSessionManager_getTermsForTaxonomy_completionHandler___block_invoke;
  v20[3] = &unk_278C1DA38;
  v21 = v6;
  v18 = v6;
  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getTerms" parameters:v17 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __67__WFWordPressSessionManager_getTermsForTaxonomy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = 0;
    v8 = [MEMORY[0x277D7C070] modelsOfClass:objc_opt_class() fromJSONArray:v5 error:&v9];
    v7 = v9;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getBlogsWithCompletionHandler:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWordPressSessionManager *)self username];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2850323E8;
  }

  v16[0] = v7;
  v8 = [(WFWordPressSessionManager *)self password];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2850323E8;
  }

  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WFWordPressSessionManager_getBlogsWithCompletionHandler___block_invoke;
  v14[3] = &unk_278C1DA38;
  v15 = v4;
  v12 = v4;
  [(WFWordPressSessionManager *)self sendRequestWithMethod:@"wp.getUsersBlogs" parameters:v11 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __59__WFWordPressSessionManager_getBlogsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = 0;
    v8 = [MEMORY[0x277D7C070] modelsOfClass:objc_opt_class() fromJSONArray:v5 error:&v9];
    v7 = v9;
    (*(*(a1 + 32) + 16))();
  }
}

- (WFWordPressSessionManager)initWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFWordPressSessionManager;
  v5 = [(WFWordPressSessionManager *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBABB8];
    v7 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x277CBABC8] wf_defaultSessionConfiguration];
    }

    v8 = [v6 sessionWithConfiguration:v7];
    session = v5->_session;
    v5->_session = v8;

    if (!v4)
    {
    }

    v10 = v5;
  }

  return v5;
}

@end