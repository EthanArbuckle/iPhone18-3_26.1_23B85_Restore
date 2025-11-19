@interface VOTTVSpeechRequestManager
- (BOOL)updateHeadersAndElementsWithTarget:(id)a3 ignoreLastUpdate:(BOOL)a4;
- (id)description;
- (id)generateOutputRequest:(BOOL *)a3;
- (void)reset;
- (void)resetElements;
- (void)resetHeaders;
- (void)transferAllFrom:(id)a3;
- (void)transferElementsFrom:(id)a3;
- (void)transferHeadersFrom:(id)a3;
@end

@implementation VOTTVSpeechRequestManager

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"VOTTVSpeechRequestManager<%p>. Headers:", self];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v19 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"Elements:\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(VOTTVSpeechRequestManager *)self requestElements];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v15 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  return v3;
}

- (BOOL)updateHeadersAndElementsWithTarget:(id)a3 ignoreLastUpdate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSMutableOrderedSet orderedSet];
  v69 = +[NSMutableOrderedSet orderedSet];
  if (([v6 isAccessibleElement] & 1) == 0)
  {
    v8 = [v6 accessibleDescendants];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v86 objects:v94 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v86 + 1) + 8 * i);
          [v69 addTVElement:v13];
          v14 = [v13 headerElements];
          [v7 addTVElements:v14];

          v15 = [v13 touchContainer];
          [v7 addTVElement:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v10);
    }
  }

  if (![v69 count])
  {
    [v69 addTVElement:v6];
    v16 = [v6 headerElements];
    [v7 addTVElements:v16];

    v17 = [v6 touchContainer];
    [v7 addTVElement:v17];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if (v18 - self->_lastFocusRequestTime < 1.0)
  {
    v19 = [v69 array];
    v20 = [(VOTTVSpeechRequestManager *)self requestElements];
    if ([v19 isEqualToArray:v20])
    {
      v21 = [v7 array];
      v22 = [(VOTTVSpeechRequestManager *)self requestHeaders];
      v23 = [v21 isEqualToArray:v22];

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

  if (v4)
  {
    v25 = [v69 array];
    [(VOTTVSpeechRequestManager *)self setRequestElements:v25];

    v26 = [v7 array];
    [(VOTTVSpeechRequestManager *)self setRequestHeaders:v26];
  }

  else
  {
    v64 = v6;
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
          v34 = [(VOTTVSpeechRequestManager *)self requestElements];
          v35 = [v34 containsObject:v33];

          if (v35)
          {
            v36 = [(VOTTVSpeechRequestManager *)self requestElements];
            v37 = [v36 originalElementforElement:v33];

            v38 = [v37 snapshot];
            [v37 updateCache];
            [v37 setAspectMask:{objc_msgSend(v37, "differenceAspectMask:", v38)}];
            [v27 addObject:v37];
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v39 = [(VOTTVSpeechRequestManager *)self requestElements];
            v40 = [v39 countByEnumeratingWithState:&v78 objects:v92 count:16];
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
                    objc_enumerationMutation(v39);
                  }

                  if (![*(*(&v78 + 1) + 8 * k) differenceAspectMask:v33])
                  {
                    [v33 setAspectMask:0];
                    goto LABEL_36;
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v78 objects:v92 count:16];
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
            v51 = [(VOTTVSpeechRequestManager *)self requestHeaders];
            v52 = [v51 containsObject:v50];

            if (v52)
            {
              v53 = [(VOTTVSpeechRequestManager *)self requestHeaders];
              v54 = [v53 originalElementforElement:v50];

              v55 = [v54 snapshot];
              [v54 updateCache];
              [v54 setAspectMask:{objc_msgSend(v54, "differenceAspectMask:", v55)}];
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
              v58 = [(VOTTVSpeechRequestManager *)self requestHeaders];
              v59 = [v58 countByEnumeratingWithState:&v70 objects:v90 count:16];
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
                      objc_enumerationMutation(v58);
                    }

                    if (![*(*(&v70 + 1) + 8 * n) differenceAspectMask:v50])
                    {
                      [v50 setAspectMask:0];
                      goto LABEL_57;
                    }
                  }

                  v60 = [v58 countByEnumeratingWithState:&v70 objects:v90 count:16];
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

    v26 = v68;
    [(VOTTVSpeechRequestManager *)self setRequestElements:v68];
    [(VOTTVSpeechRequestManager *)self setRequestHeaders:v44];

    v6 = v64;
    v7 = v65;
  }

  v24 = 1;
LABEL_62:

  return v24;
}

- (id)generateOutputRequest:(BOOL *)a3
{
  v5 = objc_alloc_init(VOTOutputRequest);
  [(VOTOutputRequest *)v5 setGeneratesBraille:1];
  [(VOTOutputRequest *)v5 setBrailleType:1];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(VOTOutputRequest *)v5 addTVElement:*(*(&v25 + 1) + 8 * i) servesAsHeader:1 filterWithAspectMask:1];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v11 = [(VOTOutputRequest *)v5 outputActions];
  v12 = [v11 count];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(VOTTVSpeechRequestManager *)self requestElements];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v13);
        }

        [(VOTOutputRequest *)v5 addTVElement:*(*(&v21 + 1) + 8 * j) servesAsHeader:0 filterWithAspectMask:1];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v18 = [(VOTOutputRequest *)v5 outputActions];
  v19 = [v18 count];

  if (a3)
  {
    *a3 = v19 != v12;
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
  v3 = [(VOTTVSpeechRequestManager *)self requestElements];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) resetAspectMask];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [(VOTTVSpeechRequestManager *)self requestHeaders];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) resetAspectMask];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(VOTTVSpeechRequestManager *)self setRequestHeaders:0];
}

- (void)transferHeadersFrom:(id)a3
{
  v4 = [a3 requestHeaders];
  [(VOTTVSpeechRequestManager *)self setRequestHeaders:v4];
}

- (void)transferElementsFrom:(id)a3
{
  v4 = [a3 requestElements];
  [(VOTTVSpeechRequestManager *)self setRequestElements:v4];
}

- (void)transferAllFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 requestHeaders];
  [(VOTTVSpeechRequestManager *)self setRequestHeaders:v5];

  v6 = [v4 requestElements];

  [(VOTTVSpeechRequestManager *)self setRequestElements:v6];
}

@end