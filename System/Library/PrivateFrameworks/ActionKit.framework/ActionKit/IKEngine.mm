@interface IKEngine
+ (void)setOAuthConsumerKey:(id)a3 andConsumerSecret:(id)a4;
- (IKEngine)initWithDelegate:(id)a3;
- (id)_signatureWithKey:(id)a3 baseString:(id)a4;
- (id)_startConnectionWithAPIPath:(id)a3 bodyArguments:(id)a4 type:(int)a5 userInfo:(id)a6 context:(id)a7;
- (id)addFolderWithTitle:(id)a3 userInfo:(id)a4;
- (id)archiveBookmark:(id)a3 userInfo:(id)a4;
- (id)authTokenForUsername:(id)a3 password:(id)a4 userInfo:(id)a5;
- (id)bookmarksInFolder:(id)a3 limit:(unint64_t)a4 existingBookmarks:(id)a5 userInfo:(id)a6;
- (id)bookmarksWithUserInfo:(id)a3;
- (id)deleteBookmark:(id)a3 userInfo:(id)a4;
- (id)deleteFolder:(id)a3 userInfo:(id)a4;
- (id)identifierForConnection:(id)a3;
- (id)moveBookmark:(id)a3 toFolder:(id)a4 userInfo:(id)a5;
- (id)orderFolders:(id)a3 userInfo:(id)a4;
- (id)starBookmark:(id)a3 userInfo:(id)a4;
- (id)textOfBookmark:(id)a3 userInfo:(id)a4;
- (id)unarchiveBookmark:(id)a3 userInfo:(id)a4;
- (id)unstarBookmark:(id)a3 userInfo:(id)a4;
- (id)updateReadProgressOfBookmark:(id)a3 toProgress:(double)a4 userInfo:(id)a5;
- (void)cancelAllConnections;
- (void)cancelConnection:(id)a3;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connectionDidFinishLoading:(id)a3;
- (void)dealloc;
@end

@implementation IKEngine

- (id)_signatureWithKey:(id)a3 baseString:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a3 cStringUsingEncoding:1];
  v6 = [a4 cStringUsingEncoding:1];
  v7 = strlen(v5);
  v8 = strlen(v6);
  CCHmac(0, v5, v7, v6, v8, macOut);
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:macOut length:20];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_startConnectionWithAPIPath:(id)a3 bodyArguments:(id)a4 type:(int)a5 userInfo:(id)a6 context:(id)a7
{
  v78 = *MEMORY[0x277D85DE8];
  if (!_startConnectionWithAPIPath_bodyArguments_type_userInfo_context__baseURL)
  {
    _startConnectionWithAPIPath_bodyArguments_type_userInfo_context__baseURL = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://www.instapaper.com"];
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:a3 relativeToURL:?];
  if (v13)
  {
    v14 = v13;
    v53 = a5;
    v54 = a6;
    v55 = a7;
    v56 = self;
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v16 = [a4 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v71;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v71 != v18)
          {
            objc_enumerationMutation(a4);
          }

          v20 = *(*(&v70 + 1) + 8 * i);
          v21 = [v20 ik_URLEncodedString];
          v22 = [a4 objectForKey:v20];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = [v22 stringValue];
          }

          [v15 setObject:objc_msgSend(v22 forKey:{"ik_URLEncodedString"), v21}];
        }

        v17 = [a4 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v17);
    }

    v57 = [MEMORY[0x277CCAB68] string];
    if ([v15 count])
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v23 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v67;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v67 != v25)
            {
              objc_enumerationMutation(v15);
            }

            [v57 appendFormat:@"%@=%@&", *(*(&v66 + 1) + 8 * j), objc_msgSend(v15, "objectForKey:", *(*(&v66 + 1) + 8 * j))];
          }

          v24 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v24);
      }

      [v57 replaceCharactersInRange:objc_msgSend(v57 withString:{"length") - 1, 1, &stru_2850323E8}];
    }

    v52 = v14;
    v27 = [objc_msgSend(v14 "absoluteString")];
    v28 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    v29 = MEMORY[0x277CCACA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v31 = [v29 stringWithFormat:@"%d", v30];
    v32 = [MEMORY[0x277CBEB38] dictionary];
    [v32 setObject:v28 forKey:@"oauth_nonce"];
    [v32 setObject:@"HMAC-SHA1" forKey:@"oauth_signature_method"];
    [v32 setObject:v31 forKey:@"oauth_timestamp"];
    [v32 setObject:_OAuthConsumerKey forKey:@"oauth_consumer_key"];
    [v32 setObject:@"1.0" forKey:@"oauth_version"];
    if ([(IKEngine *)v56 OAuthToken])
    {
      [v32 setObject:-[IKEngine OAuthToken](v56 forKey:{"OAuthToken"), @"oauth_token"}];
    }

    v33 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
    [v33 addEntriesFromDictionary:v32];
    v34 = [objc_msgSend(v33 "allKeys")];
    v35 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@&%@&", @"POST", v27];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v36 = [v34 countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v63;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(v34);
          }

          [v35 appendFormat:@"%@%%3D%@%%26", objc_msgSend(*(*(&v62 + 1) + 8 * k), "ik_URLEncodedString"), objc_msgSend(objc_msgSend(v33, "objectForKey:", *(*(&v62 + 1) + 8 * k)), "ik_URLEncodedString")];
        }

        v37 = [v34 countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v37);
    }

    [v35 replaceCharactersInRange:objc_msgSend(v35 withString:{"length") - 3, 3, &stru_2850323E8}];
    OAuthTokenSecret = v56->_OAuthTokenSecret;
    if (!OAuthTokenSecret)
    {
      OAuthTokenSecret = &stru_2850323E8;
    }

    [v32 setObject:-[IKEngine _signatureWithKey:baseString:](v56 forKey:{"_signatureWithKey:baseString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@&%@", _OAuthConsumerSecret, OAuthTokenSecret), v35), @"oauth_signature"}];
    v41 = [MEMORY[0x277CBAB50] requestWithURL:v52];
    [v41 _setNonAppInitiated:1];
    [v41 setHTTPMethod:@"POST"];
    [v41 setHTTPBody:{objc_msgSend(v57, "dataUsingEncoding:", 4)}];
    v42 = [MEMORY[0x277CCAB68] stringWithString:@"OAuth "];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = [v32 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v59;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v59 != v45)
          {
            objc_enumerationMutation(v32);
          }

          [v42 appendFormat:@"%@=%@, ", *(*(&v58 + 1) + 8 * m), objc_msgSend(v32, "objectForKey:", *(*(&v58 + 1) + 8 * m))];
        }

        v44 = [v32 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v44);
    }

    [v42 replaceCharactersInRange:objc_msgSend(v42 withString:{"length") - 2, 2, &stru_2850323E8}];
    [v41 setValue:v42 forHTTPHeaderField:@"Authorization"];
    v47 = [[IKURLConnection alloc] initWithRequest:v41 delegate:v56 startImmediately:0];
    [(IKURLConnection *)v47 _setType:v53];
    [(IKURLConnection *)v47 _setUserInfo:v54];
    [(IKURLConnection *)v47 _setContext:v55];
    v48 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    [(NSMutableDictionary *)v56->_connections setObject:v47 forKey:v48];

    [(IKEngine *)v56 delegate];
    if (objc_opt_respondsToSelector())
    {
      [(IKEngineDelegate *)[(IKEngine *)v56 delegate] engine:v56 willStartConnection:v47];
    }

    v49 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(NSURLConnection *)v47 scheduleInRunLoop:v49 forMode:*MEMORY[0x277CBE738]];
    [(NSURLConnection *)v47 start];
  }

  else
  {
    v48 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v48;
}

- (void)dealloc
{
  self->_delegate = 0;
  [(IKEngine *)self cancelAllConnections];

  v3.receiver = self;
  v3.super_class = IKEngine;
  [(IKEngine *)&v3 dealloc];
}

- (void)connectionDidFinishLoading:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:objc_msgSend(a3 encoding:{"data"), 4}];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1011 userInfo:0];
  v7 = [a3 type];
  if (v7 == 11)
  {
    if ([objc_msgSend(a3 "response")] == 200)
    {
      [(IKEngine *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        -[IKEngineDelegate engine:connection:didReceiveText:ofBookmarkWithBookmarkID:](-[IKEngine delegate](self, "delegate"), "engine:connection:didReceiveText:ofBookmarkWithBookmarkID:", self, a3, v5, [objc_msgSend(a3 "_context")]);
      }

      goto LABEL_11;
    }

    v22 = [IKDeserializer objectFromJSONString:v5];
    if (v22)
    {
      v12 = v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_24:
        v23 = *MEMORY[0x277D85DE8];
        v20 = self;
        v21 = a3;
        v19 = v12;
        goto LABEL_98;
      }
    }

LABEL_97:
    v63 = *MEMORY[0x277D85DE8];
    v20 = self;
    v21 = a3;
    v19 = v6;
    goto LABEL_98;
  }

  v8 = v7;
  if (v7)
  {
    v11 = [IKDeserializer objectFromJSONString:v5];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        switch(v8)
        {
          case 1:
            v13 = [v12 lastObject];
            if (!v13)
            {
              goto LABEL_97;
            }

            v14 = v13;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didVerifyCredentialsForUser:v14];
            }

            break;
          case 2:
            v47 = [MEMORY[0x277CBEB18] array];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v48 = [v12 countByEnumeratingWithState:&v73 objects:v81 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = 0;
              v51 = *v74;
              do
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v74 != v51)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v53 = *(*(&v73 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v50 = v53;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v47 addObject:v53];
                    }
                  }
                }

                v49 = [v12 countByEnumeratingWithState:&v73 objects:v81 count:16];
              }

              while (v49);
            }

            else
            {
              v50 = 0;
            }

            v64 = [a3 _context];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didReceiveBookmarks:v47 ofUser:v50 forFolder:v64];
            }

            goto LABEL_11;
          case 3:
            v45 = [v12 lastObject];
            if (!v45)
            {
              goto LABEL_97;
            }

            v46 = v45;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didUpdateReadProgressOfBookmark:v46];
            }

            break;
          case 4:
            v43 = [v12 lastObject];
            if (!v43)
            {
              goto LABEL_97;
            }

            v44 = v43;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didAddBookmark:v44];
            }

            break;
          case 5:
            v37 = [objc_msgSend(a3 "_context")];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didDeleteBookmarkWithBookmarkID:v37];
            }

            goto LABEL_11;
          case 6:
            v39 = [v12 lastObject];
            if (!v39)
            {
              goto LABEL_97;
            }

            v40 = v39;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didStarBookmark:v40];
            }

            break;
          case 7:
            v54 = [v12 lastObject];
            if (!v54)
            {
              goto LABEL_97;
            }

            v55 = v54;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didUnstarBookmark:v55];
            }

            break;
          case 8:
            v56 = [v12 lastObject];
            if (!v56)
            {
              goto LABEL_97;
            }

            v57 = v56;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didArchiveBookmark:v57];
            }

            break;
          case 9:
            v61 = [v12 lastObject];
            if (!v61)
            {
              goto LABEL_97;
            }

            v62 = v61;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didUnarchiveBookmark:v62];
            }

            break;
          case 10:
            v58 = [v12 lastObject];
            v59 = [objc_msgSend(a3 "_context")];
            if (!v58)
            {
              goto LABEL_97;
            }

            v60 = v59;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didMoveBookmark:v58 toFolderWithFolderID:v60];
            }

            break;
          case 12:
            v31 = [MEMORY[0x277CBEB18] array];
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v32 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v70;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v70 != v34)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v36 = *(*(&v69 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v31 addObject:v36];
                  }
                }

                v33 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
              }

              while (v33);
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didReceiveFolders:v31];
            }

            goto LABEL_11;
          case 13:
            v41 = [v12 lastObject];
            if (!v41)
            {
              goto LABEL_97;
            }

            v42 = v41;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_97;
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didAddFolder:v42];
            }

            break;
          case 14:
            v38 = [objc_msgSend(a3 "_context")];
            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didDeleteFolderWithFolderID:v38];
            }

            goto LABEL_11;
          case 15:
            v25 = [MEMORY[0x277CBEB18] array];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v26 = [v12 countByEnumeratingWithState:&v65 objects:v79 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v66;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v66 != v28)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v30 = *(*(&v65 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v25 addObject:v30];
                  }
                }

                v27 = [v12 countByEnumeratingWithState:&v65 objects:v79 count:16];
              }

              while (v27);
            }

            [(IKEngine *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self connection:a3 didOrderFolders:v25];
            }

            goto LABEL_11;
          default:
            goto LABEL_11;
        }

        goto LABEL_11;
      }

      goto LABEL_24;
    }

    goto LABEL_97;
  }

  v9 = [objc_msgSend(a3 "response")];
  if (v9 == 200)
  {
    v77 = 0;
    v78 = 0;
    if (![IKDeserializer token:&v78 andTokenSecret:&v77 fromQlineString:v5])
    {
      [(IKEngine *)self connection:a3 didFailWithError:v6];
LABEL_26:
      v24 = *MEMORY[0x277D85DE8];
      return;
    }

    [(IKEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(IKEngine *)self delegate];
      [(IKEngineDelegate *)v10 engine:self connection:a3 didReceiveAuthToken:v78 andTokenSecret:v77];
    }

    [(IKEngine *)self setOAuthToken:v78];
    [(IKEngine *)self setOAuthTokenSecret:v77];
LABEL_11:
    [(IKEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didFinishConnection:a3];
    }

    [(NSMutableDictionary *)self->_connections removeObjectForKey:[(IKEngine *)self identifierForConnection:a3]];
    goto LABEL_26;
  }

  v15 = v9;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:@"message"];
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.matthiasplappert.InstapaperKit" code:v15 userInfo:v16];
  v18 = *MEMORY[0x277D85DE8];
  v19 = v17;
  v20 = self;
  v21 = a3;
LABEL_98:

  [(IKEngine *)v20 connection:v21 didFailWithError:v19];
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  [(IKEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didFailConnection:a3 error:a4];
  }

  v7 = [(IKEngine *)self identifierForConnection:a3];
  connections = self->_connections;

  [(NSMutableDictionary *)connections removeObjectForKey:v7];
}

- (void)cancelAllConnections
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_connections];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[IKEngine cancelConnection:](self, "cancelConnection:", [v3 objectForKey:*(*(&v9 + 1) + 8 * v7++)]);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnection:(id)a3
{
  v5 = [(IKEngine *)self identifierForConnection:?];
  if (v5)
  {
    v6 = v5;
    [a3 cancel];
    [(IKEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(IKEngineDelegate *)[(IKEngine *)self delegate] engine:self didCancelConnection:a3];
    }

    connections = self->_connections;

    [(NSMutableDictionary *)connections removeObjectForKey:v6];
  }
}

- (id)orderFolders:(id)a3 userInfo:(id)a4
{
  result = [a3 count];
  if (result)
  {
    v8 = [MEMORY[0x277CCAB68] string];
    if ([a3 count])
    {
      v9 = 0;
      do
      {
        [v8 appendFormat:@"%ld:%lu, ", objc_msgSend(objc_msgSend(a3, "objectAtIndex:", v9), "folderID"), v9];
        ++v9;
      }

      while (v9 < [a3 count]);
    }

    [v8 replaceCharactersInRange:objc_msgSend(v8 withString:{"length") - 1, 1, &stru_2850323E8}];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:@"order"];

    return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/set_order" bodyArguments:v10 type:15 userInfo:a4 context:0];
  }

  return result;
}

- (id)deleteFolder:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "folderID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"folder_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/delete" bodyArguments:v7 type:14 userInfo:a4 context:v6];
}

- (id)addFolderWithTitle:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:@"title"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/folders/add" bodyArguments:v6 type:13 userInfo:a4 context:0];
}

- (id)textOfBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/get_text" bodyArguments:v7 type:11 userInfo:a4 context:v6];
}

- (id)moveBookmark:(id)a3 toFolder:(id)a4 userInfo:(id)a5
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a4, "folderID")}];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"bookmark_id", v9, @"folder_id", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/move" bodyArguments:v10 type:10 userInfo:a5 context:v9];
}

- (id)unarchiveBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/unarchive" bodyArguments:v7 type:9 userInfo:a4 context:0];
}

- (id)archiveBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/archive" bodyArguments:v7 type:8 userInfo:a4 context:0];
}

- (id)unstarBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/unstar" bodyArguments:v7 type:7 userInfo:a4 context:0];
}

- (id)starBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/star" bodyArguments:v7 type:6 userInfo:a4 context:0];
}

- (id)deleteBookmark:(id)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"bookmark_id"];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/delete" bodyArguments:v7 type:5 userInfo:a4 context:v6];
}

- (id)updateReadProgressOfBookmark:(id)a3 toProgress:(double)a4 userInfo:(id)a5
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "bookmarkID")}];
  *&v9 = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v11 = MEMORY[0x277CCABB0];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v13 = [v11 numberWithInteger:v12];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"bookmark_id", v10, @"progress", v13, @"progress_timestamp", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/bookmarks/update_read_progress" bodyArguments:v14 type:3 userInfo:a5 context:0];
}

- (id)bookmarksInFolder:(id)a3 limit:(unint64_t)a4 existingBookmarks:(id)a5 userInfo:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [a3 folderID];
  if (v11 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(a3, "folderID")];
  }

  else
  {
    v12 = off_278C1A2B8[v11 + 3];
  }

  v13 = [MEMORY[0x277CCAB68] string];
  if ([a5 count])
  {
    v25 = v12;
    v26 = v10;
    v27 = self;
    v28 = a6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [a5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(a5);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          [v13 appendFormat:@"%ld", objc_msgSend(v18, "bookmarkID")];
          if ([v18 hashString])
          {
            [v13 appendFormat:@":%@", objc_msgSend(v18, "hashString")];
          }

          if ([v18 progressDate])
          {
            [v18 progress];
            if (v19 != -1.0)
            {
              [objc_msgSend(v18 "progressDate")];
              v21 = v20;
              [v18 progress];
              [v13 appendFormat:@":%f:%d", v22, v21];
            }
          }

          [v13 appendFormat:@", "];
        }

        v15 = [a5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    [v13 replaceCharactersInRange:objc_msgSend(v13 withString:{"length") - 1, 1, &stru_2850323E8}];
    a6 = v28;
    v10 = v26;
    self = v27;
    v12 = v25;
  }

  result = -[IKEngine _startConnectionWithAPIPath:bodyArguments:type:userInfo:context:](self, "_startConnectionWithAPIPath:bodyArguments:type:userInfo:context:", @"/api/1/bookmarks/list", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"limit", v12, @"folder_id", v13, @"have", 0}], 2, a6, a3);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)bookmarksWithUserInfo:(id)a3
{
  v5 = +[IKFolder unreadFolder];

  return [(IKEngine *)self bookmarksInFolder:v5 limit:25 existingBookmarks:0 userInfo:a3];
}

- (id)authTokenForUsername:(id)a3 password:(id)a4 userInfo:(id)a5
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"x_auth_username", a4, @"x_auth_password", @"client_auth", @"x_auth_mode", 0}];

  return [(IKEngine *)self _startConnectionWithAPIPath:@"/api/1/oauth/access_token" bodyArguments:v7 type:0 userInfo:a5 context:0];
}

- (id)identifierForConnection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_connections allKeysForObject:a3];

  return [v3 lastObject];
}

- (IKEngine)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = IKEngine;
  v4 = [(IKEngine *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_OAuthToken = 0;
    v4->_OAuthTokenSecret = 0;
    v4->_delegate = a3;
    v4->_connections = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v5;
}

+ (void)setOAuthConsumerKey:(id)a3 andConsumerSecret:(id)a4
{
  _OAuthConsumerKey = [a3 copy];

  _OAuthConsumerSecret = [a4 copy];
}

@end