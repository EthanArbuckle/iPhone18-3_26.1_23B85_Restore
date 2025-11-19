@interface MKCuratedCollectionItemsTicket
@end

@implementation MKCuratedCollectionItemsTicket

void __83___MKCuratedCollectionItemsTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = *(a1 + 40);
  if (v14)
  {
    if (v12)
    {
      v15 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83___MKCuratedCollectionItemsTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
      block[3] = &unk_1E76CDA20;
      v54 = v14;
      v53 = v13;
      if (v15)
      {
        dispatch_async(v15, block);
      }

      else
      {
        __83___MKCuratedCollectionItemsTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_2(block);
      }

      v37 = v54;
    }

    else
    {
      v38 = a1;
      v39 = v9;
      v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v41 = v11;
      if ([v11 count])
      {
        v16 = 0;
        v40 = v10;
        do
        {
          v17 = [v11 objectAtIndexedSubscript:{v16, v38}];
          if (v16 < [v10 count] && (objc_msgSend(v17, "_identifier"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", v16), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "itemIdentifier"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v18, "isEqualToGEOMapItemIdentifier:", v20), v20, v19, v18, v21))
          {
            v22 = [v10 objectAtIndexedSubscript:v16];
          }

          else
          {
            v43 = v16;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v23 = v10;
            v24 = [v23 countByEnumeratingWithState:&v48 objects:v55 count:16];
            if (v24)
            {
              v25 = v24;
              v22 = 0;
              v26 = *v49;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v49 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v48 + 1) + 8 * i);
                  v29 = [v17 _identifier];
                  v30 = [v28 itemIdentifier];
                  v31 = [v29 isEqualToGEOMapItemIdentifier:v30];

                  if (v31)
                  {
                    v32 = v28;

                    v22 = v32;
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v48 objects:v55 count:16];
              }

              while (v25);
            }

            else
            {
              v22 = 0;
            }

            v10 = v40;
            v11 = v41;
            v16 = v43;
          }

          v33 = [MKPlaceCollectionMapItem alloc];
          v34 = [[MKMapItem alloc] initWithGeoMapItem:v17 isPlaceHolderPlace:0];
          v35 = [(MKPlaceCollectionMapItem *)v33 initWithMapItem:v34 placeCollectionItem:v22];

          [v42 addObject:v35];
          ++v16;
        }

        while (v16 < [v11 count]);
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __83___MKCuratedCollectionItemsTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
      v44[3] = &unk_1E76CAA70;
      v36 = *(v38 + 32);
      v47 = *(v38 + 40);
      v9 = v39;
      v45 = v39;
      v46 = v42;
      v37 = v42;
      if (v36)
      {
        dispatch_async(v36, v44);
      }

      else
      {
        __83___MKCuratedCollectionItemsTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke_3(v44);
      }

      v11 = v41;
      v13 = 0;
    }
  }
}

@end