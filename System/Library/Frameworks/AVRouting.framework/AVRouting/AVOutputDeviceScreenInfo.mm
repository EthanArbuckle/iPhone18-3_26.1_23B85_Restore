@interface AVOutputDeviceScreenInfo
- (AVOutputDeviceScreenInfo)initWithDict:(id)dict;
- (void)dealloc;
@end

@implementation AVOutputDeviceScreenInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceScreenInfo;
  [(AVOutputDeviceScreenInfo *)&v3 dealloc];
}

- (AVOutputDeviceScreenInfo)initWithDict:(id)dict
{
  v42 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = AVOutputDeviceScreenInfo;
  v4 = [(AVOutputDeviceScreenInfo *)&v36 init];
  if (v4)
  {
    v4->_ID = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962400]), "copy"}];
    v4->_inputCapabilities = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962410]), "copy"}];
    v4->_limitedUI = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962418]), "BOOLValue"}];
    v4->_limitedUIElements = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962428]), "copy"}];
    v4->_nightMode = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962420]), "BOOLValue"}];
    v4->_maxFPS = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962430]), "copy"}];
    v5 = MEMORY[0x1E696B098];
    v6 = [dict objectForKey:*MEMORY[0x1E6962438]];
    size.width = 0.0;
    size.height = 0.0;
    v7 = CGSizeMakeWithDictionaryRepresentation(v6, &size);
    v8 = MEMORY[0x1E695F060];
    if (!v7)
    {
      size = *MEMORY[0x1E695F060];
    }

    v4->_physicalSize = [v5 valueWithSize:{size.width, size.height}];
    v9 = MEMORY[0x1E696B098];
    v10 = [dict objectForKey:*MEMORY[0x1E6962440]];
    size.width = 0.0;
    size.height = 0.0;
    if (!CGSizeMakeWithDictionaryRepresentation(v10, &size))
    {
      size = *v8;
    }

    v4->_pixelSize = [v9 valueWithSize:{size.width, size.height}];
    v11 = MEMORY[0x1E696B098];
    v12 = [dict objectForKey:*MEMORY[0x1E6962450]];
    size.width = 0.0;
    size.height = 0.0;
    if (!CGSizeMakeWithDictionaryRepresentation(v12, &size))
    {
      size = *v8;
    }

    v4->_squarePixelSize = [v11 valueWithSize:{size.width, size.height}];
    v4->_viewHeightScaleFactor = [dict objectForKey:*MEMORY[0x1E6962460]];
    v4->_primaryInputDevice = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962448]), "copy"}];
    v29 = v4;
    v4->_cornerMasks = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E69623F8]), "BOOLValue"}];
    dictCopy = dict;
    v13 = [dict objectForKey:*MEMORY[0x1E6962458]];
    v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:&size count:16];
    if (v14)
    {
      v15 = v14;
      v34 = *v38;
      v32 = *MEMORY[0x1E6962488];
      v33 = *MEMORY[0x1E6962478];
      v31 = *MEMORY[0x1E6962480];
      v16 = *MEMORY[0x1E6962470];
      v17 = *MEMORY[0x1E6962468];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [MEMORY[0x1E696B098] valueWithRect:{AVOutputDeviceViewAreaInfoNSRectFromDictionary(objc_msgSend(v19, "objectForKey:", v33))}];
          v21 = [v19 objectForKey:v32] != 0;
          v22 = [v19 objectForKey:v31] != 0;
          v23 = [v19 objectForKey:v16];
          v24 = -[AVOutputDeviceViewAreaInfo initWithViewArea:transitionControl:supportsFocusTransfer:statusBarEdge:safeArea:]([AVOutputDeviceViewAreaInfo alloc], "initWithViewArea:transitionControl:supportsFocusTransfer:statusBarEdge:safeArea:", v20, v21, v22, v23, [MEMORY[0x1E696B098] valueWithRect:{AVOutputDeviceViewAreaInfoNSRectFromDictionary(objc_msgSend(v19, "objectForKey:", v17))}]);
          [v35 addObject:v24];
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:&size count:16];
      }

      while (v15);
    }

    v4 = v29;
    v29->_viewAreas = v35;
    v29->_applicationURL = [dictCopy objectForKey:*MEMORY[0x1E69623F0]];
    v29->_initialApplicationURL = [dictCopy objectForKey:*MEMORY[0x1E6962408]];
    v25 = v29;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

@end