@interface _TUIFeedSectionModel
- (BOOL)invalidateViewAtIndexPath:(id)a3;
- (id).cxx_construct;
- (id)visibleViewAtIndexPath:(id)a3;
- (void)appendRenderOverrideObservers:(id)a3;
- (void)appendVisibleView:(id)a3;
- (void)resumeReuseOfView:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)suspendReuseOfView:(id)a3;
- (void)updateInvalidatedWithHost:(id)a3 liveTransformResolver:(id)a4 factory:(id)a5 feedView:(id)a6;
- (void)updateVisible:(BOOL)a3 bounds:(CGRect)a4 host:(id)a5 liveTransformResolver:(id)a6 factory:(id)a7 feedView:(id)a8;
@end

@implementation _TUIFeedSectionModel

- (void)appendVisibleView:(id)a3
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [a3 addObject:i[3]];
  }
}

- (void)appendRenderOverrideObservers:(id)a3
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[3] appendRenderOverrideObservers:a3];
  }
}

- (void)updateVisible:(BOOL)a3 bounds:(CGRect)a4 host:(id)a5 liveTransformResolver:(id)a6 factory:(id)a7 feedView:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v89 = a3;
  v16 = a5;
  v92 = a6;
  v100 = a7;
  v97 = a8;
  v99 = v16;
  sub_130E34(v125, &self->_reuseSuspendedViews);
  v95 = [v16 tui_hostingView];
  v96 = [v97 subviewsDelegate];
  v17 = objc_opt_new();
  v90 = v17;
  [(TUIRenderModelSection *)self->_renderModel appendLiveTransformLayoutAttributes:v17 forElementsInRect:v92 withLiveTransformResolver:x, y, width, height];
  if (v89)
  {
    [(TUIRenderModelSection *)self->_renderModel appendLayoutAttributes:v17 forElementsInRect:v92 withLiveTransformResolver:x, y, width, height];
  }

  if ([v17 count])
  {
    v18 = [v97 impressionSnapshot];
    v19 = v18 == 0;

    if (!v19)
    {
      renderModel = self->_renderModel;
      v21 = [v97 impressionSnapshot];
      [(TUIRenderModelSection *)renderModel appendImpressionLayoutAttributes:v90 forElementsInRect:v21 snapshot:x, y, width, height];
    }

    v22 = [v97 overrides];
    v23 = v22 == 0;

    if (!v23)
    {
      [v97 _updateLayoutAttributes:v90];
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v90;
    v24 = [obj countByEnumeratingWithState:&v121 objects:v140 count:16];
    if (v24)
    {
      v101 = *v122;
      do
      {
        v104 = v24;
        for (i = 0; i != v104; i = i + 1)
        {
          if (*v122 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v121 + 1) + 8 * i);
          v27 = [v26 indexPath];
          v120 = [v27 tui_row];
          v28 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:v120];
          v29 = [v28 submodel];
          v108 = [v29 reuseIdentifier];

          v30 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &v120);
          v31 = v30;
          if (v28)
          {
            if (v30)
            {
              v32 = [v30[3] reuseIdentifier];
              v33 = v32;
              if (v32 == v108)
              {

LABEL_31:
                v44 = v31[3];
                *buf = &v120;
                sub_13118C(v125, &v120)[3] = v44;
                sub_34630(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v31);
                goto LABEL_32;
              }

              v34 = [v31[3] reuseIdentifier];
              v35 = [v34 isEqualToString:v108];

              if (v35)
              {
                goto LABEL_31;
              }

              if (_TUIDeviceHasInternalInstall())
              {
                v56 = v31[3];
                v91 = v56;
                v57 = TUIDefaultLog();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  v105 = v57;
                  v59 = v120;
                  v93 = [v56 layoutAttributes];
                  v102 = [v93 renderModel];
                  v60 = [v102 identifier];
                  v61 = [v60 tui_identifierToString];
                  v62 = [v56 reuseIdentifier];
                  v63 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:v120];
                  v64 = [v63 identifier];
                  v65 = [v64 tui_identifierToString];
                  *buf = 134219010;
                  *&buf[4] = v59;
                  v132 = 2112;
                  v133 = v61;
                  v134 = 2112;
                  v135 = v62;
                  v136 = 2112;
                  v137 = v65;
                  v138 = 2112;
                  v57 = v105;
                  v139 = v108;
                  _os_log_error_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "[%lu] view re-used with mismatching reuseIdentifier (%@,%@) vs (%@,%@)", buf, 0x34u);
                }

                for (j = self->_reuseSuspendedViews.__table_.__first_node_.__next_; j; j = *j)
                {
                  v82 = j[2];
                  v83 = j[3];
                  v84 = TUIDefaultLog();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    v107 = [v83 layoutAttributes];
                    v85 = [v107 renderModel];
                    v86 = [v85 identifier];
                    v87 = [v86 tui_identifierToString];
                    v88 = [v83 reuseIdentifier];
                    *buf = 134218498;
                    *&buf[4] = v82;
                    v132 = 2112;
                    v133 = v87;
                    v134 = 2112;
                    v135 = v88;
                    _os_log_error_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "[%lu] suspended reuse (%@,%@)", buf, 0x20u);
                  }
                }

                v67 = [NSException alloc];
                v130[0] = v27;
                v129[0] = @"indexPath";
                v129[1] = @"viewIdentifier";
                v68 = [v91 layoutAttributes];
                v69 = [v68 renderModel];
                v70 = [v69 identifier];
                v71 = [v70 tui_identifierToString];
                v72 = v71;
                if (v71)
                {
                  v73 = v71;
                }

                else
                {
                  v73 = @"nil";
                }

                v130[1] = v73;
                v129[2] = @"viewReuseIdentifier";
                v74 = [v91 reuseIdentifier];
                v75 = v74;
                if (v74)
                {
                  v76 = v74;
                }

                else
                {
                  v76 = @"nil";
                }

                v130[2] = v76;
                v129[3] = @"renderIdentifier";
                v106 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:v120];
                v103 = [v106 identifier];
                v94 = [v103 tui_identifierToString];
                v77 = v94;
                if (!v94)
                {
                  v77 = @"nil";
                }

                v129[4] = @"renderReuseIdentifier";
                v78 = v108;
                if (!v108)
                {
                  v78 = @"nil";
                }

                v130[3] = v77;
                v130[4] = v78;
                v79 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:5];
                v80 = [v67 initWithName:@"InvalidReuse" reason:@"A view with the wrong identifier is being re-used" userInfo:v79];
                v81 = v80;

                objc_exception_throw(v80);
              }
            }
          }

          else if (v30)
          {
            goto LABEL_31;
          }

          v36 = v26;
          v37 = [v36 zIndex];
          v38 = self->_renderModel;
          if (self->_previousRenderModel && sub_1310D8(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &v120))
          {
            v39 = [(TUIRenderModelSection *)self->_previousRenderModel layoutAttributesForViewAtIndexPath:v27 withLiveTransformResolver:v92];
            if (v39)
            {
              v40 = self->_previousRenderModel;

              v41 = v39;
              v38 = v40;
              v36 = v41;
            }
          }

          v42 = [(TUIRenderModelSection *)v38 viewAtIndexPath:v27 factory:v100 host:v99];
          if (v42)
          {
            v114[0] = _NSConcreteStackBlock;
            v114[1] = 3221225472;
            v114[2] = sub_129C60;
            v114[3] = &unk_2621F0;
            v115 = v95;
            v43 = v42;
            v119 = v37;
            v116 = v43;
            v117 = self;
            v118 = v36;
            [UIView performWithoutAnimation:v114];
            if (self->_currentViewState)
            {
              v111[0] = _NSConcreteStackBlock;
              v111[1] = 3221225472;
              v111[2] = sub_129FFC;
              v111[3] = &unk_262218;
              v111[4] = self;
              v113 = v120;
              v112 = v43;
              [UIView performWithoutAnimation:v111];
            }

            [v96 feedView:v97 willDisplayView:v43 atIndexPath:v27];
            [v43 viewWillDisplay];
            *buf = &v120;
            sub_13118C(v125, &v120)[3] = v43;
          }

LABEL_32:
        }

        v24 = [obj countByEnumeratingWithState:&v121 objects:v140 count:16];
      }

      while (v24);
    }
  }

  sub_28FD0(&self->_visibleViews, v125);
  for (k = self->_reuseSuspendedViews.__table_.__first_node_.__next_; k; k = *k)
  {
    v46 = sub_1310D8(v125, k + 2);
    if (v46)
    {
      sub_34630(v125, v46);
    }
  }

  if (v127)
  {
    for (m = v126; m; m = *m)
    {
      v48 = m[2];
      v49 = m[3];
      v50 = [v49 viewStateSave];
      if (v50)
      {
        currentViewState = self->_currentViewState;
        v52 = [(TUIRenderModelSection *)self->_renderModel identifierForViewAtIndex:v48];
        [(TUIMutableViewState *)currentViewState setViewState:v50 forIdentifier:v52];
      }

      v53 = [NSIndexPath tui_indexPathForRow:m[2] inSection:self->_sectionIndex];
      [v96 feedView:v97 didEndDisplayView:v49 atIndexPath:v53];

      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_12A09C;
      v109[3] = &unk_262240;
      v54 = v49;
      v110 = v54;
      [UIView performWithoutAnimation:v109];
      v128 = v54;
      v55 = [NSArray arrayWithObjects:&v128 count:1];
      [v100 viewFactoryReuseSubviews:v55 host:v99];
    }
  }

  self->_visible = v89;

  sub_11694(v125);
}

- (void)updateInvalidatedWithHost:(id)a3 liveTransformResolver:(id)a4 factory:(id)a5 feedView:(id)a6
{
  v45 = a3;
  v48 = a4;
  v42 = a5;
  v50 = a6;
  v10 = [v50 currentUpdateCollection];
  v46 = [v10 changes];

  v43 = [v50 subviewsDelegate];
  v47 = [v50 overrides];
  v49 = [v50 impressionSnapshot];
  v44 = [v50 animatedUpdateCompletionGroup];
  next = self->_invalidatedViews.__table_.__first_node_.__next_;
  if (next)
  {
    v51 = 0;
    v41 = v62;
    v52 = self;
    do
    {
      *&v53[0] = next[2];
      v12 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v53);
      v13 = v12;
      if (v12)
      {
        v14 = v12[3];
        v15 = [NSIndexPath tui_indexPathForRow:*&v53[0] inSection:self->_sectionIndex, v41];
        v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForViewAtIndexPath:v15 withLiveTransformResolver:v48];
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v49 == 0;
        }

        if (!v17)
        {
          v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForImpressionAtIndexPath:v15 snapshot:?];
        }

        if (v16)
        {
          if (v47)
          {
            v68 = v16;
            v18 = [NSArray arrayWithObjects:&v68 count:1];
            [v50 _updateLayoutAttributes:v18];
          }

          v19 = [v16 zIndex];
          v20 = [v14 layoutAttributes];
          v21 = v19 != [v20 zIndex];

          TUIReusableSubviewApplyLayoutAttributes(v14, v16);
          renderModel = v52->_renderModel;
          v23 = [v46 inserts];
          v24 = [v46 updates];
          v25 = [v46 deletes];
          v26 = TUIAnimationCollectionViewAnimationForView(renderModel, v14, v16, v23, v24, v25);

          v51 |= v21;
          if (v26)
          {
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v62[0] = sub_12A7D0;
            v62[1] = &unk_262268;
            v27 = v50;
            v63 = v27;
            v28 = v14;
            v64 = v28;
            v29 = v44;
            v65 = v29;
            v30 = objc_retainBlock(v61);
            if (v44)
            {
              dispatch_group_enter(v29);
            }

            [v27 suspendReuseOfView:v28];
            (v26)[2](v26, v30);
          }
        }

        else
        {
          v31 = [NSIndexPath tui_indexPathForRow:*&v53[0] inSection:self->_sectionIndex];
          [v43 feedView:v50 didEndDisplayView:v14 atIndexPath:v31];

          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_12A820;
          v59[3] = &unk_262240;
          v32 = v14;
          v60 = v32;
          [UIView performWithoutAnimation:v59];
          v67 = v32;
          v33 = [NSArray arrayWithObjects:&v67 count:1];
          [v42 viewFactoryReuseSubviews:v33 host:v45];

          sub_34630(&v52->_visibleViews.__table_.__bucket_list_.__ptr_, v13);
          v26 = v60;
        }

        self = v52;
      }

      next = *next;
    }

    while (next);
    if (v51)
    {
      v34 = [v45 tui_hostingView];
      v35 = [v34 subviews];
      v36 = [v35 sortedArrayUsingComparator:&stru_262288];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v38)
      {
        v39 = *v56;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v56 != v39)
            {
              objc_enumerationMutation(v37);
            }

            [v34 bringSubviewToFront:{*(*(&v55 + 1) + 8 * i), v41}];
          }

          v38 = [v37 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v38);
      }

      self = v52;
    }
  }

  memset(v53, 0, sizeof(v53));
  v54 = 1065353216;
  sub_8BFC8(&self->_invalidatedViews, v53);
  sub_11694(v53);
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  if (self->_semanticContentAttribute != a3)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    self->_semanticContentAttribute = a3;
    for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
    {
      [i[3] setSemanticContentAttribute:{self->_semanticContentAttribute, v9, v10, v11, v12}];
    }
  }
}

- (id)visibleViewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v9 = [v4 tui_row], (v6 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &v9)) != 0))
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)invalidateViewAtIndexPath:(id)a3
{
  v4 = a3;
  v6 = [v4 tui_row];
  sub_1313BC(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &v6);

  return 1;
}

- (void)suspendReuseOfView:(id)a3
{
  v4 = a3;
  v5 = [v4 layoutAttributes];
  v6 = [v5 indexPath];

  v9[0] = [v6 tui_row];
  if (!sub_1310D8(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, v9))
  {
    v7 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v9);
    if (v7)
    {
      v8 = v7[3];
      v9[2] = v9;
      sub_13118C(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, v9)[3] = v8;
    }
  }
}

- (void)resumeReuseOfView:(id)a3
{
  v4 = [a3 layoutAttributes];
  v5 = [v4 indexPath];

  v7 = [v5 tui_row];
  v6 = sub_1310D8(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, &v7);
  if (v6)
  {
    sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &v7);
    sub_34630(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, v6);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end