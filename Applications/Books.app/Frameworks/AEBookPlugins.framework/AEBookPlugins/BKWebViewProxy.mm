@interface BKWebViewProxy
- (CGRect)contentRectForVisibleContent;
- (CGRect)frame;
- (CGRect)localFrame;
- (CGRect)rectForPageOffset:(unint64_t)a3;
- (double)scrollingPageHeightForPaginationMode:(unint64_t)a3 configuration:(id)a4;
- (double)scrollingPageWidthForPaginationMode:(unint64_t)a3 configuration:(id)a4;
- (id)currentLocationForOrdinal:(unint64_t)a3 pageOffset:(unint64_t)a4 contentInsets:(UIEdgeInsets)a5;
- (unint64_t)pageCount;
- (unint64_t)pageOffsetForLocation:(id)a3;
- (void)_butActually_wk2_scrollToPage:(int64_t)a3 paginationMode:(unint64_t)a4 pageProgressionDirection:(int)a5 configuration:(id)a6;
- (void)_wk2_scrollToPage:(int64_t)a3 paginationMode:(unint64_t)a4 pageProgressionDirection:(int)a5 configuration:(id)a6;
- (void)clientRectsForLocation:(id)a3 completion:(id)a4;
- (void)clientRectsForLocations:(id)a3 completion:(id)a4;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setScrollViewClipsToBounds:(BOOL)a3;
@end

@implementation BKWebViewProxy

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BKWebViewProxy *)self setLocalFrame:?];
  v8 = [(BKWebViewProxy *)self loader];
  [v8 setDesiredWebViewFrame:{x, y, width, height}];
}

- (CGRect)frame
{
  [(BKWebViewProxy *)self loader];

  [(BKWebViewProxy *)self localFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)pageCount
{
  v2 = [(BKWebViewProxy *)self loader];
  v3 = [v2 pageCount];

  return v3;
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKWebViewProxy *)self loader];
  v4 = [v5 webView];
  [v4 setClipsToBounds:v3];
}

- (void)setScrollViewClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v6 = [(BKWebViewProxy *)self loader];
  v4 = [v6 webView];
  v5 = [v4 scrollView];
  [v5 setClipsToBounds:v3];
}

- (void)clientRectsForLocations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v15 = BUDynamicCast();
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = [(BKWebViewProxy *)self loader];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8BA10;
  v19[3] = &unk_1E46F0;
  v20 = v8;
  v21 = v7;
  v17 = v8;
  v18 = v7;
  [v16 clientRectsForLocations:v9 completion:v19];
}

- (void)clientRectsForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15 = v6;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_8BC2C;
    v13[3] = &unk_1E4DC0;
    v14 = v7;
    [(BKWebViewProxy *)self clientRectsForLocations:v8 completion:v13];

    v9 = v14;
  }

  else
  {
    v10 = _AEWKProxyLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "clientRectsForLocation: nil location", v12, 2u);
    }

    v11 = objc_retainBlock(v7);
    v9 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0, 0);
    }
  }
}

- (CGRect)contentRectForVisibleContent
{
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v3 = [(BKWebViewProxy *)self loader];
    [v3 contentRectForVisibleContent];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)rectForPageOffset:(unint64_t)a3
{
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v5 = [(BKWebViewProxy *)self loader];
    [v5 rectForPageOffset:a3];
    x = v6;
    y = v8;
    width = v10;
    height = v12;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)currentLocationForOrdinal:(unint64_t)a3 pageOffset:(unint64_t)a4 contentInsets:(UIEdgeInsets)a5
{
  v6 = [(BKWebViewProxy *)self loader:a3];
  v7 = [v6 currentFirstVisbleCFILocation];

  [v7 setWk1EpubLocation:0];
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (unint64_t)pageOffsetForLocation:(id)a3
{
  v4 = a3;
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v5 = _AEWKProxyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v13 = 138412290;
      v14 = v7;
    }
  }

  [(BKWebViewProxy *)self loader];

  [(BKWebViewProxy *)self hasWKWebView];
  if ([(BKWebViewProxy *)self hasWKWebView])
  {
    v8 = _AEWKProxyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Unable to determine current page offset.", &v13, 2u);
    }

    v9 = _AERePaginationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BKEPubCVC - pageOffsetForLocation: No Page Offset Found for location of type (%@)!", &v13, 0xCu);
    }
  }

  [(BKWebViewProxy *)self hasWKWebView];

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (double)scrollingPageWidthForPaginationMode:(unint64_t)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [v6 contentLayoutSize];
    Width = v8;
  }

  else
  {
    Width = 0.0;
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      v10 = [(BKWebViewProxy *)self loader];
      [v10 desiredWebViewFrame];
      Width = CGRectGetWidth(v12);
    }
  }

  return Width;
}

- (double)scrollingPageHeightForPaginationMode:(unint64_t)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 4)
  {
    [v6 contentLayoutSize];
    Height = v8;
  }

  else
  {
    Height = 0.0;
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      v10 = [(BKWebViewProxy *)self loader];
      [v10 desiredWebViewFrame];
      Height = CGRectGetHeight(v12);
    }
  }

  return Height;
}

- (void)_wk2_scrollToPage:(int64_t)a3 paginationMode:(unint64_t)a4 pageProgressionDirection:(int)a5 configuration:(id)a6
{
  v10 = a6;
  v11 = [(BKWebViewProxy *)self loader];
  v12 = [v11 webView];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_8C414;
  v32[3] = &unk_1E4DE8;
  v32[4] = self;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v13 = v10;
  v33 = v13;
  v14 = objc_retainBlock(v32);
  v15 = [v12 scrollView];
  [v15 contentSize];
  v17 = v16;
  v19 = v18;

  v20 = [(BKWebViewProxy *)self loader];
  v21 = [v20 pageCount];

  [v13 be_pageLength];
  v23 = v22;
  if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 / v21;
  if (v25 < v22 * 0.8)
  {
    v26 = _AEBookPluginsPageTurnLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [NSNumber numberWithDouble:v24];
      v28 = [NSNumber numberWithDouble:v23 * [(BKWebViewProxy *)self pageCount]];
      v29 = [NSNumber numberWithDouble:v25];
      v30 = [NSNumber numberWithDouble:v23 * 0.8];
      *buf = 138413058;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "contentLength is %@ but a size more like %@ seems more plausible. we compared %@ against %@", buf, 0x2Au);
    }

    goto LABEL_13;
  }

  if (v17 == CGSizeZero.width && v19 == CGSizeZero.height)
  {
LABEL_13:
    [v12 _doAfterNextPresentationUpdate:v14];
    goto LABEL_14;
  }

  (v14[2])(v14);
LABEL_14:
}

- (void)_butActually_wk2_scrollToPage:(int64_t)a3 paginationMode:(unint64_t)a4 pageProgressionDirection:(int)a5 configuration:(id)a6
{
  v10 = a6;
  if (a3 <= 0x7FFFFFFFFFFFFFFELL)
  {
    if ([(BKWebViewProxy *)self hasWKWebView])
    {
      v11 = [(BKWebViewProxy *)self loader];
      v12 = [v11 pageCount];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(BKWebViewProxy *)self loader];
    v14 = [v13 webView];
    v15 = [v14 isLoading];

    if (v15 && v12 <= 0)
    {
      v16 = _AEBookPluginsPageTurnLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(BKWebViewProxy *)self loader];
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 ordinal]);
        v19 = [NSNumber numberWithInteger:a3];
        *buf = 138412546;
        v127 = v18;
        v128 = 2112;
        v129 = v19;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Attempt to turn pages in:%@ to %@ when we are not loaded and have no known pagecount.", buf, 0x16u);

LABEL_12:
      }
    }

    else
    {
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v12 >= a3)
        {
          v21 = a3;
        }

        else
        {
          v21 = (v12 - 1);
          v22 = _AEBookPluginsPageTurnLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [NSNumber numberWithInteger:a3];
            v24 = [NSNumber numberWithInteger:v12];
            v25 = [NSNumber numberWithInteger:v12 - 1];
            *buf = 138412802;
            v127 = v23;
            v128 = 2112;
            v129 = v24;
            v130 = 2112;
            v131 = v25;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Attempt to turn to page %@ when we have %@ pages -- setting pageOffset to %@", buf, 0x20u);

            v21 = (v12 - 1);
          }
        }

        v26 = [(BKWebViewProxy *)self loader];
        v16 = [v26 webView];

        [v16 frame];
        v28 = v27;
        v30 = v29;
        v113 = v32;
        v114 = v31;
        v33 = [v16 scrollView];
        v34 = [v16 be_estimatedContentSizeValue];
        v35 = [v16 be_requestedContentOffset];
        [v33 contentOffset];
        v37 = v36;
        v39 = v38;
        [v33 contentSize];
        v41 = v40;
        v43 = v42;
        if (v35)
        {
          [v35 CGPointValue];
          v45 = v44;
          v47 = v46;
          CGRectMakeWithSize();
          v138.x = v45;
          v138.y = v47;
          if (CGRectContainsPoint(v139, v138))
          {
            if (v37 == CGPointZero.x && v39 == CGPointZero.y)
            {
              v39 = v47;
              v37 = v45;
            }
          }

          else
          {
            v111 = v21;
            v48 = _AEBookPluginsPageTurnLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v115 = v35;
              *v125 = v45;
              *&v125[1] = v47;
              [NSValue valueWithBytes:v125 objCType:"{CGPoint=dd}"];
              v118 = v33;
              v50 = v49 = v34;
              *v124 = v41;
              *&v124[1] = v43;
              v51 = [NSValue valueWithBytes:v124 objCType:"{CGSize=dd}"];
              *buf = 138412546;
              v127 = v50;
              v128 = 2112;
              v129 = v51;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "Requested content offset outside availabe content! offset: %@ contentSize: %@", buf, 0x16u);

              v35 = v115;
              v34 = v49;
              v33 = v118;
            }

            v21 = v111;
          }
        }

        if ([v10 isScroll])
        {
          if (v34)
          {
            v116 = v37;
            v119 = v39;
            [v34 CGSizeValue];
            CGRectMakeWithSize();
            v53 = v52;
            v55 = v54;
            v110 = v43;
            v112 = v41;
            v56 = v28;
            v58 = v57;
            v59 = v30;
            v61 = v60;
            CGRectMakeWithSize();
            v146.origin.x = v62;
            v146.origin.y = v63;
            v146.size.width = v64;
            v146.size.height = v65;
            v140.origin.x = v53;
            v140.origin.y = v55;
            v140.size.width = v58;
            v66 = v56;
            v41 = v112;
            v140.size.height = v61;
            v141 = CGRectUnion(v140, v146);
            width = v141.size.width;
            height = v141.size.height;
            v141.origin.x = v66;
            v141.origin.y = v59;
            v141.size.width = v114;
            v141.size.height = v113;
            if (v112 <= CGRectGetWidth(v141))
            {
              v142.origin.x = v66;
              v142.origin.y = v59;
              v142.size.width = v114;
              v142.size.height = v113;
              v43 = v110;
              v37 = v116;
              v39 = v119;
              if (v110 <= CGRectGetHeight(v142))
              {
                v43 = height;
                v41 = width;
              }
            }

            else
            {
              v37 = v116;
              v39 = v119;
              v43 = v110;
            }
          }

          if ([v10 layout] == &dword_0 + 2)
          {
            [v10 contentLayoutSize];
            v79 = v78;
            [v10 contentInsets];
            v81 = -(v80 - v79 * v21);
            [v33 bounds];
            v82 = v43 - CGRectGetHeight(v143);
            if (v81 < v82)
            {
              v82 = v81;
            }

            if (v82 >= 0.0)
            {
              v39 = v82;
            }

            else
            {
              v39 = 0.0;
            }
          }

          else if ([v10 layout] == &dword_0 + 3)
          {
            [(BKWebViewProxy *)self scrollingPageWidthForPaginationMode:a4 configuration:v10];
            v84 = v83;
            [v10 contentInsets];
            if (a5 == 1)
            {
              v87 = v41 - v84 * (v21 + 1) + v86;
            }

            else
            {
              v87 = -(v85 - v84 * v21);
            }

            [v33 bounds];
            v109 = v41 - CGRectGetWidth(v145);
            if (v87 < v109)
            {
              v109 = v87;
            }

            if (v109 >= 0.0)
            {
              v37 = v109;
            }

            else
            {
              v37 = 0.0;
            }
          }
        }

        else
        {
          [v10 contentLayoutSize];
          v70 = v69;
          [v10 gutterWidth];
          v72 = v71;
          [v10 gutterWidth];
          if (v21)
          {
            v74 = v70 + v72;
            v75 = ((v12 * v74) - v73);
            v76 = (v21 * v74);
            if (v76 > v75)
            {
              v76 = v75;
            }
          }

          else
          {
            v76 = 0.0;
          }

          v77 = v35;
          if (a5 == 1)
          {
            if ([v10 layout] == &dword_0 + 2)
            {
              v76 = -v76;
            }

            else
            {
              v88 = [(BKWebViewProxy *)self loader];
              v89 = [v88 webView];
              [v89 bounds];
              v90 = CGRectGetWidth(v144);

              [v10 contentLayoutSize];
              v76 = v90 - (v76 + v91);
            }
          }

          v92 = [(BKWebViewProxy *)self loader];
          v93 = [v92 webView];
          v94 = [v93 be_contentView];
          v39 = 0.0;
          [v94 convertPoint:v33 toView:{v76, 0.0}];
          v37 = v95;

          v35 = v77;
        }

        v96 = _AEBookPluginsLifeCycleLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *v123 = v37;
          *&v123[1] = v39;
          v97 = [NSValue valueWithBytes:v123 objCType:"{CGPoint=dd}"];
          v117 = v35;
          [v33 contentOffset];
          v122[0] = v98;
          v122[1] = v99;
          [NSValue valueWithBytes:v122 objCType:"{CGPoint=dd}"];
          v120 = v33;
          v101 = v100 = v34;
          [v120 contentSize];
          v121[0] = v102;
          v121[1] = v103;
          v104 = [NSValue valueWithBytes:v121 objCType:"{CGSize=dd}"];
          v105 = [(BKWebViewProxy *)self loader];
          v106 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v105 ordinal]);
          *buf = 138544642;
          v127 = v97;
          v128 = 2114;
          v129 = v101;
          v130 = 2114;
          v131 = v117;
          v132 = 2114;
          v133 = v104;
          v134 = 2114;
          v135 = v100;
          v136 = 2114;
          v137 = v106;
          _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "BKWVP scrollToPage contentOffset:%{public}@ currentScrollViewOffset:%{public}@ requestedContentOffset:%{public}@ scrollViewContentSize:%{public}@ estimatedContentSize:%{public}@ ordinal:%{public}@", buf, 0x3Eu);

          v35 = v117;
          v34 = v100;
          v33 = v120;
        }

        v107 = [(BKWebViewProxy *)self loader];
        v108 = [v107 webView];
        [v108 be_setContentOffset:{v37, v39}];

        goto LABEL_53;
      }

      v16 = _AEBookPluginsPageTurnLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [NSNumber numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
        v20 = [NSNumber numberWithInteger:a3];
        *buf = 138543618;
        v127 = v17;
        v128 = 2114;
        v129 = v20;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Attempt to set invalid offset - totalPages:%{public}@ pageOffset:%{public}@", buf, 0x16u);

        goto LABEL_12;
      }
    }

LABEL_53:
  }
}

- (CGRect)localFrame
{
  x = self->_localFrame.origin.x;
  y = self->_localFrame.origin.y;
  width = self->_localFrame.size.width;
  height = self->_localFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end