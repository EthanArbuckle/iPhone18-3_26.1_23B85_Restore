@interface VOTTVSpeechRequestManager
- (BOOL)updateHeadersAndElementsWithTarget:(id)target ignoreLastUpdate:(BOOL)update;
- (id)description;
- (id)generateOutputRequest:(BOOL *)request;
- (void)reset;
- (void)resetElements;
- (void)resetHeaders;
- (void)transferAllFrom:(id)from;
- (void)transferElementsFrom:(id)from;
- (void)transferHeadersFrom:(id)from;
@end

@implementation VOTTVSpeechRequestManager

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"VOTTVSpeechRequestManager<%p>. Headers:", self];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  requestHeaders = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v5 = [requestHeaders countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(requestHeaders);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v19 + 1) + 8 * i)];
      }

      v6 = [requestHeaders countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"Elements:\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  requestElements = [(VOTTVSpeechRequestManager *)self requestElements];
  v10 = [requestElements countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(requestElements);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v15 + 1) + 8 * j)];
      }

      v11 = [requestElements countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  return v3;
}

- (BOOL)updateHeadersAndElementsWithTarget:(id)target ignoreLastUpdate:(BOOL)update
{
  updateCopy = update;
  targetCopy = target;
  v7 = +[NSMutableOrderedSet orderedSet];
  v69 = +[NSMutableOrderedSet orderedSet];
  if (([targetCopy isAccessibleElement] & 1) == 0)
  {
    accessibleDescendants = [targetCopy accessibleDescendants];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = [accessibleDescendants countByEnumeratingWithState:&v86 objects:v94 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v87;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v87 != v11)
          {
            objc_enumerationMutation(accessibleDescendants);
          }

          v13 = *(*(&v86 + 1) + 8 * i);
          [v69 addTVElement:v13];
          headerElements = [v13 headerElements];
          [v7 addTVElements:headerElements];

          touchContainer = [v13 touchContainer];
          [v7 addTVElement:touchContainer];
        }

        v10 = [accessibleDescendants countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v10);
    }
  }

  if (![v69 count])
  {
    [v69 addTVElement:targetCopy];
    headerElements2 = [targetCopy headerElements];
    [v7 addTVElements:headerElements2];

    touchContainer2 = [targetCopy touchContainer];
    [v7 addTVElement:touchContainer2];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if (v18 - self->_lastFocusRequestTime < 1.0)
  {
    array = [v69 array];
    requestElements = [(VOTTVSpeechRequestManager *)self requestElements];
    if ([array isEqualToArray:requestElements])
    {
      array2 = [v7 array];
      requestHeaders = [(VOTTVSpeechRequestManager *)self requestHeaders];
      v23 = [array2 isEqualToArray:requestHeaders];

      if (v23)
      {
        v24 = 0;
        goto LABEL_62;
      }
    }

    else
    {
    }
  }

  if (updateCopy)
  {
    array3 = [v69 array];
    [(VOTTVSpeechRequestManager *)self setRequestElements:array3];

    array4 = [v7 array];
    [(VOTTVSpeechRequestManager *)self setRequestHeaders:array4];
  }

  else
  {
    v64 = targetCopy;
    v65 = v7;
    v27 = +[NSMutableArray array];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v28 = v69;
    v29 = [v28 countByEnumeratingWithState:&v82 objects:v93 count:16];
    v68 = v27;
    if (v29)
    {
      v30 = v29;
      v31 = *v83;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v83 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v82 + 1) + 8 * j);
          requestElements2 = [(VOTTVSpeechRequestManager *)self requestElements];
          v35 = [requestElements2 containsObject:v33];

          if (v35)
          {
            requestElements3 = [(VOTTVSpeechRequestManager *)self requestElements];
            v37 = [requestElements3 originalElementforElement:v33];

            snapshot = [v37 snapshot];
            [v37 updateCache];
            [v37 setAspectMask:{objc_msgSend(v37, "differenceAspectMask:", snapshot)}];
            [v27 addObject:v37];
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            requestElements4 = [(VOTTVSpeechRequestManager *)self requestElements];
            v40 = [requestElements4 countByEnumeratingWithState:&v78 objects:v92 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v79;
              while (2)
              {
                for (k = 0; k != v41; k = k + 1)
                {
                  if (*v79 != v42)
                  {
                    objc_enumerationMutation(requestElements4);
                  }

                  if (![*(*(&v78 + 1) + 8 * k) differenceAspectMask:v33])
                  {
                    [v33 setAspectMask:0];
                    goto LABEL_36;
                  }
                }

                v41 = [requestElements4 countByEnumeratingWithState:&v78 objects:v92 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

LABEL_36:

            v27 = v68;
            [v68 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v30);
    }

    v44 = +[NSMutableArray array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v45 = v65;
    v46 = [v45 countByEnumeratingWithState:&v74 objects:v91 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v75;
      v66 = *v75;
      v67 = v45;
      do
      {
        for (m = 0; m != v47; m = m + 1)
        {
          if (*v75 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v74 + 1) + 8 * m);
          if (([v28 containsObject:v50] & 1) == 0)
          {
            requestHeaders2 = [(VOTTVSpeechRequestManager *)self requestHeaders];
            v52 = [requestHeaders2 containsObject:v50];

            if (v52)
            {
              requestHeaders3 = [(VOTTVSpeechRequestManager *)self requestHeaders];
              v54 = [requestHeaders3 originalElementforElement:v50];

              snapshot2 = [v54 snapshot];
              [v54 updateCache];
              [v54 setAspectMask:{objc_msgSend(v54, "differenceAspectMask:", snapshot2)}];
              [v44 addObject:v54];
            }

            else
            {
              v56 = v28;
              v57 = v44;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              requestHeaders4 = [(VOTTVSpeechRequestManager *)self requestHeaders];
              v59 = [requestHeaders4 countByEnumeratingWithState:&v70 objects:v90 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v71;
                while (2)
                {
                  for (n = 0; n != v60; n = n + 1)
                  {
                    if (*v71 != v61)
                    {
                      objc_enumerationMutation(requestHeaders4);
                    }

                    if (![*(*(&v70 + 1) + 8 * n) differenceAspectMask:v50])
                    {
                      [v50 setAspectMask:0];
                      goto LABEL_57;
                    }
                  }

                  v60 = [requestHeaders4 countByEnumeratingWithState:&v70 objects:v90 count:16];
                  if (v60)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_57:

              v44 = v57;
              [v57 addObject:v50];
              v28 = v56;
              v48 = v66;
              v45 = v67;
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v74 objects:v91 count:16];
      }

      while (v47);
    }

    array4 = v68;
    [(VOTTVSpeechRequestManager *)self setRequestElements:v68];
    [(VOTTVSpeechRequestManager *)self setRequestHeaders:v44];

    targetCopy = v64;
    v7 = v65;
  }

  v24 = 1;
LABEL_62:

  return v24;
}

- (id)generateOutputRequest:(BOOL *)request
{
  v5 = objc_alloc_init(VOTOutputRequest);
  [(VOTOutputRequest *)v5 setGeneratesBraille:1];
  [(VOTOutputRequest *)v5 setBrailleType:1];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  requestHeaders = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v7 = [requestHeaders countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(requestHeaders);
        }

        [(VOTOutputRequest *)v5 addTVElement:*(*(&v25 + 1) + 8 * i) servesAsHeader:1 filterWithAspectMask:1];
      }

      v8 = [requestHeaders countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  outputActions = [(VOTOutputRequest *)v5 outputActions];
  v12 = [outputActions count];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  requestElements = [(VOTTVSpeechRequestManager *)self requestElements];
  v14 = [requestElements countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(requestElements);
        }

        [(VOTOutputRequest *)v5 addTVElement:*(*(&v21 + 1) + 8 * j) servesAsHeader:0 filterWithAspectMask:1];
      }

      v15 = [requestElements countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  outputActions2 = [(VOTOutputRequest *)v5 outputActions];
  v19 = [outputActions2 count];

  if (request)
  {
    *request = v19 != v12;
  }

  return v5;
}

- (void)reset
{
  [(VOTTVSpeechRequestManager *)self resetElements];

  [(VOTTVSpeechRequestManager *)self resetHeaders];
}

- (void)resetElements
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  requestElements = [(VOTTVSpeechRequestManager *)self requestElements];
  v4 = [requestElements countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(requestElements);
        }

        [*(*(&v8 + 1) + 8 * v7) resetAspectMask];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [requestElements countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(VOTTVSpeechRequestManager *)self setRequestElements:0];
}

- (void)resetHeaders
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  requestHeaders = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v4 = [requestHeaders countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(requestHeaders);
        }

        [*(*(&v8 + 1) + 8 * v7) resetAspectMask];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [requestHeaders countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(VOTTVSpeechRequestManager *)self setRequestHeaders:0];
}

- (void)transferHeadersFrom:(id)from
{
  requestHeaders = [from requestHeaders];
  [(VOTTVSpeechRequestManager *)self setRequestHeaders:requestHeaders];
}

- (void)transferElementsFrom:(id)from
{
  requestElements = [from requestElements];
  [(VOTTVSpeechRequestManager *)self setRequestElements:requestElements];
}

- (void)transferAllFrom:(id)from
{
  fromCopy = from;
  requestHeaders = [fromCopy requestHeaders];
  [(VOTTVSpeechRequestManager *)self setRequestHeaders:requestHeaders];

  requestElements = [fromCopy requestElements];

  [(VOTTVSpeechRequestManager *)self setRequestElements:requestElements];
}

@end