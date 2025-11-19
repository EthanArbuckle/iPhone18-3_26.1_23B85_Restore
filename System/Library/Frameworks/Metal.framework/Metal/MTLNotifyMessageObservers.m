@interface MTLNotifyMessageObservers
@end

@implementation MTLNotifyMessageObservers

uint64_t ___MTLNotifyMessageObservers_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = s_notifierArray;
  result = [s_notifierArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [v7 filter];
        if (!v8 || (v9 = v8, v10 = [v8 messageType], (objc_msgSend(*(a1 + 32), "messageType") & v10) != 0) && (!objc_msgSend(v9, "device") || !objc_msgSend(*(a1 + 32), "device") || (v11 = objc_msgSend(v9, "device"), v11 == objc_msgSend(*(a1 + 32), "device"))))
        {
          v12 = [v7 handler];
          (*(v12 + 16))(v12, *(a1 + 32), *(a1 + 40));
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end