@interface _TUIFeedSectionModel
- (BOOL)invalidateViewAtIndexPath:(id)path;
- (id).cxx_construct;
- (id)visibleViewAtIndexPath:(id)path;
- (void)appendRenderOverrideObservers:(id)observers;
- (void)appendVisibleView:(id)view;
- (void)resumeReuseOfView:(id)view;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)suspendReuseOfView:(id)view;
- (void)updateInvalidatedWithHost:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view;
- (void)updateVisible:(BOOL)visible bounds:(CGRect)bounds host:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view;
@end

@implementation _TUIFeedSectionModel

- (void)appendVisibleView:(id)view
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [view addObject:i[3]];
  }
}

- (void)appendRenderOverrideObservers:(id)observers
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[3] appendRenderOverrideObservers:observers];
  }
}

- (void)updateVisible:(BOOL)visible bounds:(CGRect)bounds host:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  visibleCopy = visible;
  hostCopy = host;
  resolverCopy = resolver;
  factoryCopy = factory;
  viewCopy = view;
  v99 = hostCopy;
  sub_130E34(v125, &self->_reuseSuspendedViews);
  tui_hostingView = [hostCopy tui_hostingView];
  subviewsDelegate = [viewCopy subviewsDelegate];
  v17 = objc_opt_new();
  v90 = v17;
  [(TUIRenderModelSection *)self->_renderModel appendLiveTransformLayoutAttributes:v17 forElementsInRect:resolverCopy withLiveTransformResolver:x, y, width, height];
  if (visibleCopy)
  {
    [(TUIRenderModelSection *)self->_renderModel appendLayoutAttributes:v17 forElementsInRect:resolverCopy withLiveTransformResolver:x, y, width, height];
  }

  if ([v17 count])
  {
    impressionSnapshot = [viewCopy impressionSnapshot];
    v19 = impressionSnapshot == 0;

    if (!v19)
    {
      renderModel = self->_renderModel;
      impressionSnapshot2 = [viewCopy impressionSnapshot];
      [(TUIRenderModelSection *)renderModel appendImpressionLayoutAttributes:v90 forElementsInRect:impressionSnapshot2 snapshot:x, y, width, height];
    }

    overrides = [viewCopy overrides];
    v23 = overrides == 0;

    if (!v23)
    {
      [viewCopy _updateLayoutAttributes:v90];
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
          indexPath = [v26 indexPath];
          tui_row = [indexPath tui_row];
          v28 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
          submodel = [v28 submodel];
          reuseIdentifier = [submodel reuseIdentifier];

          v30 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &tui_row);
          v31 = v30;
          if (v28)
          {
            if (v30)
            {
              reuseIdentifier2 = [v30[3] reuseIdentifier];
              v33 = reuseIdentifier2;
              if (reuseIdentifier2 == reuseIdentifier)
              {

LABEL_31:
                v44 = v31[3];
                *buf = &tui_row;
                sub_13118C(v125, &tui_row)[3] = v44;
                sub_34630(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v31);
                goto LABEL_32;
              }

              reuseIdentifier3 = [v31[3] reuseIdentifier];
              v35 = [reuseIdentifier3 isEqualToString:reuseIdentifier];

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
                  v59 = tui_row;
                  layoutAttributes = [v56 layoutAttributes];
                  renderModel = [layoutAttributes renderModel];
                  identifier = [renderModel identifier];
                  tui_identifierToString = [identifier tui_identifierToString];
                  reuseIdentifier4 = [v56 reuseIdentifier];
                  v63 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
                  identifier2 = [v63 identifier];
                  tui_identifierToString2 = [identifier2 tui_identifierToString];
                  *buf = 134219010;
                  *&buf[4] = v59;
                  v132 = 2112;
                  v133 = tui_identifierToString;
                  v134 = 2112;
                  v135 = reuseIdentifier4;
                  v136 = 2112;
                  v137 = tui_identifierToString2;
                  v138 = 2112;
                  v57 = v105;
                  v139 = reuseIdentifier;
                  _os_log_error_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "[%lu] view re-used with mismatching reuseIdentifier (%@,%@) vs (%@,%@)", buf, 0x34u);
                }

                for (j = self->_reuseSuspendedViews.__table_.__first_node_.__next_; j; j = *j)
                {
                  v82 = j[2];
                  v83 = j[3];
                  v84 = TUIDefaultLog();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    layoutAttributes2 = [v83 layoutAttributes];
                    renderModel2 = [layoutAttributes2 renderModel];
                    identifier3 = [renderModel2 identifier];
                    tui_identifierToString3 = [identifier3 tui_identifierToString];
                    reuseIdentifier5 = [v83 reuseIdentifier];
                    *buf = 134218498;
                    *&buf[4] = v82;
                    v132 = 2112;
                    v133 = tui_identifierToString3;
                    v134 = 2112;
                    v135 = reuseIdentifier5;
                    _os_log_error_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "[%lu] suspended reuse (%@,%@)", buf, 0x20u);
                  }
                }

                v67 = [NSException alloc];
                v130[0] = indexPath;
                v129[0] = @"indexPath";
                v129[1] = @"viewIdentifier";
                layoutAttributes3 = [v91 layoutAttributes];
                renderModel3 = [layoutAttributes3 renderModel];
                identifier4 = [renderModel3 identifier];
                tui_identifierToString4 = [identifier4 tui_identifierToString];
                v72 = tui_identifierToString4;
                if (tui_identifierToString4)
                {
                  v73 = tui_identifierToString4;
                }

                else
                {
                  v73 = @"nil";
                }

                v130[1] = v73;
                v129[2] = @"viewReuseIdentifier";
                reuseIdentifier6 = [v91 reuseIdentifier];
                v75 = reuseIdentifier6;
                if (reuseIdentifier6)
                {
                  v76 = reuseIdentifier6;
                }

                else
                {
                  v76 = @"nil";
                }

                v130[2] = v76;
                v129[3] = @"renderIdentifier";
                v106 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
                identifier5 = [v106 identifier];
                tui_identifierToString5 = [identifier5 tui_identifierToString];
                v77 = tui_identifierToString5;
                if (!tui_identifierToString5)
                {
                  v77 = @"nil";
                }

                v129[4] = @"renderReuseIdentifier";
                v78 = reuseIdentifier;
                if (!reuseIdentifier)
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
          zIndex = [v36 zIndex];
          v38 = self->_renderModel;
          if (self->_previousRenderModel && sub_1310D8(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &tui_row))
          {
            v39 = [(TUIRenderModelSection *)self->_previousRenderModel layoutAttributesForViewAtIndexPath:indexPath withLiveTransformResolver:resolverCopy];
            if (v39)
            {
              v40 = self->_previousRenderModel;

              v41 = v39;
              v38 = v40;
              v36 = v41;
            }
          }

          v42 = [(TUIRenderModelSection *)v38 viewAtIndexPath:indexPath factory:factoryCopy host:v99];
          if (v42)
          {
            v114[0] = _NSConcreteStackBlock;
            v114[1] = 3221225472;
            v114[2] = sub_129C60;
            v114[3] = &unk_2621F0;
            v115 = tui_hostingView;
            v43 = v42;
            v119 = zIndex;
            v116 = v43;
            selfCopy = self;
            v118 = v36;
            [UIView performWithoutAnimation:v114];
            if (self->_currentViewState)
            {
              v111[0] = _NSConcreteStackBlock;
              v111[1] = 3221225472;
              v111[2] = sub_129FFC;
              v111[3] = &unk_262218;
              v111[4] = self;
              v113 = tui_row;
              v112 = v43;
              [UIView performWithoutAnimation:v111];
            }

            [subviewsDelegate feedView:viewCopy willDisplayView:v43 atIndexPath:indexPath];
            [v43 viewWillDisplay];
            *buf = &tui_row;
            sub_13118C(v125, &tui_row)[3] = v43;
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
      viewStateSave = [v49 viewStateSave];
      if (viewStateSave)
      {
        currentViewState = self->_currentViewState;
        v52 = [(TUIRenderModelSection *)self->_renderModel identifierForViewAtIndex:v48];
        [(TUIMutableViewState *)currentViewState setViewState:viewStateSave forIdentifier:v52];
      }

      v53 = [NSIndexPath tui_indexPathForRow:m[2] inSection:self->_sectionIndex];
      [subviewsDelegate feedView:viewCopy didEndDisplayView:v49 atIndexPath:v53];

      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_12A09C;
      v109[3] = &unk_262240;
      v54 = v49;
      v110 = v54;
      [UIView performWithoutAnimation:v109];
      v128 = v54;
      v55 = [NSArray arrayWithObjects:&v128 count:1];
      [factoryCopy viewFactoryReuseSubviews:v55 host:v99];
    }
  }

  self->_visible = visibleCopy;

  sub_11694(v125);
}

- (void)updateInvalidatedWithHost:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view
{
  hostCopy = host;
  resolverCopy = resolver;
  factoryCopy = factory;
  viewCopy = view;
  currentUpdateCollection = [viewCopy currentUpdateCollection];
  changes = [currentUpdateCollection changes];

  subviewsDelegate = [viewCopy subviewsDelegate];
  overrides = [viewCopy overrides];
  impressionSnapshot = [viewCopy impressionSnapshot];
  animatedUpdateCompletionGroup = [viewCopy animatedUpdateCompletionGroup];
  next = self->_invalidatedViews.__table_.__first_node_.__next_;
  if (next)
  {
    v51 = 0;
    v41 = v62;
    selfCopy = self;
    do
    {
      *&v53[0] = next[2];
      v12 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v53);
      v13 = v12;
      if (v12)
      {
        v14 = v12[3];
        v15 = [NSIndexPath tui_indexPathForRow:*&v53[0] inSection:self->_sectionIndex, v41];
        v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForViewAtIndexPath:v15 withLiveTransformResolver:resolverCopy];
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = impressionSnapshot == 0;
        }

        if (!v17)
        {
          v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForImpressionAtIndexPath:v15 snapshot:?];
        }

        if (v16)
        {
          if (overrides)
          {
            v68 = v16;
            v18 = [NSArray arrayWithObjects:&v68 count:1];
            [viewCopy _updateLayoutAttributes:v18];
          }

          zIndex = [v16 zIndex];
          layoutAttributes = [v14 layoutAttributes];
          v21 = zIndex != [layoutAttributes zIndex];

          TUIReusableSubviewApplyLayoutAttributes(v14, v16);
          renderModel = selfCopy->_renderModel;
          inserts = [changes inserts];
          updates = [changes updates];
          deletes = [changes deletes];
          v26 = TUIAnimationCollectionViewAnimationForView(renderModel, v14, v16, inserts, updates, deletes);

          v51 |= v21;
          if (v26)
          {
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v62[0] = sub_12A7D0;
            v62[1] = &unk_262268;
            v27 = viewCopy;
            v63 = v27;
            v28 = v14;
            v64 = v28;
            v29 = animatedUpdateCompletionGroup;
            v65 = v29;
            v30 = objc_retainBlock(v61);
            if (animatedUpdateCompletionGroup)
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
          [subviewsDelegate feedView:viewCopy didEndDisplayView:v14 atIndexPath:v31];

          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_12A820;
          v59[3] = &unk_262240;
          v32 = v14;
          v60 = v32;
          [UIView performWithoutAnimation:v59];
          v67 = v32;
          v33 = [NSArray arrayWithObjects:&v67 count:1];
          [factoryCopy viewFactoryReuseSubviews:v33 host:hostCopy];

          sub_34630(&selfCopy->_visibleViews.__table_.__bucket_list_.__ptr_, v13);
          v26 = v60;
        }

        self = selfCopy;
      }

      next = *next;
    }

    while (next);
    if (v51)
    {
      tui_hostingView = [hostCopy tui_hostingView];
      subviews = [tui_hostingView subviews];
      v36 = [subviews sortedArrayUsingComparator:&stru_262288];

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

            [tui_hostingView bringSubviewToFront:{*(*(&v55 + 1) + 8 * i), v41}];
          }

          v38 = [v37 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v38);
      }

      self = selfCopy;
    }
  }

  memset(v53, 0, sizeof(v53));
  v54 = 1065353216;
  sub_8BFC8(&self->_invalidatedViews, v53);
  sub_11694(v53);
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if (self->_semanticContentAttribute != attribute)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    self->_semanticContentAttribute = attribute;
    for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
    {
      [i[3] setSemanticContentAttribute:{self->_semanticContentAttribute, v9, v10, v11, v12}];
    }
  }
}

- (id)visibleViewAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && (v9 = [pathCopy tui_row], (v6 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &v9)) != 0))
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)invalidateViewAtIndexPath:(id)path
{
  pathCopy = path;
  tui_row = [pathCopy tui_row];
  sub_1313BC(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &tui_row);

  return 1;
}

- (void)suspendReuseOfView:(id)view
{
  viewCopy = view;
  layoutAttributes = [viewCopy layoutAttributes];
  indexPath = [layoutAttributes indexPath];

  v9[0] = [indexPath tui_row];
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

- (void)resumeReuseOfView:(id)view
{
  layoutAttributes = [view layoutAttributes];
  indexPath = [layoutAttributes indexPath];

  tui_row = [indexPath tui_row];
  v6 = sub_1310D8(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, &tui_row);
  if (v6)
  {
    sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &tui_row);
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