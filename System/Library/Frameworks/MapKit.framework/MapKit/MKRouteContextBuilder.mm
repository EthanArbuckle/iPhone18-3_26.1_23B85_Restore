@interface MKRouteContextBuilder
- (float)_defaultPuckRadius;
- (id)buildRouteContextForAnchorPoints:(id)points;
- (id)buildRouteContextForRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
@end

@implementation MKRouteContextBuilder

- (float)_defaultPuckRadius
{
  +[(_MKPuckAnnotationView *)_MKUserLocationView];
  *&v2 = v2;
  return *&v2 * 0.5;
}

- (id)buildRouteContextForAnchorPoints:(id)points
{
  pointsCopy = points;
  v5 = objc_alloc(MEMORY[0x1E69DF488]);
  firstObject = [pointsCopy firstObject];
  v7 = [v5 initWithAnchorPoint:firstObject useType:1];

  [(MKRouteContextBuilder *)self _defaultPuckRadius];
  [v7 setPuckRadius:?];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject2 = [preferredLanguages firstObject];
  [v7 setLocale:firstObject2];

  return v7;
}

- (id)buildRouteContextForRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  v103 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [routesCopy objectAtIndexedSubscript:index];
  }

  v92 = v5;
  if ([v5 transportType] == 1)
  {
    isWalkingOnlyTransitRoute = 1;
  }

  else
  {
    isWalkingOnlyTransitRoute = [v92 isWalkingOnlyTransitRoute];
  }

  v94 = [objc_alloc(MEMORY[0x1E69DF488]) initWithComposedRoute:v92 useType:isWalkingOnlyTransitRoute ^ 1u];
  [(MKRouteContextBuilder *)self _defaultPuckRadius];
  [v94 setPuckRadius:?];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  [v94 setLocale:firstObject];

  v9 = _MKLocalizedStringFromThisBundle(@"AccessPointEntryName");
  [v94 setAccessPointEntryName:v9];

  v10 = _MKLocalizedStringFromThisBundle(@"AccessPointExitName");
  [v94 setAccessPointExitName:v10];

  v88 = objc_opt_new();
  v11 = [routesCopy count];
  memset(v99, 0, sizeof(v99));
  *buf = v99;
  buf[8] = 0;
  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  routeInfo = [v94 routeInfo];
  v13 = *(v99[0] + 8 * index);
  *(v99[0] + 8 * index) = routeInfo;

  if ([routesCopy count] == 1)
  {
    std::vector<RouteSection>::vector[abi:ne200100](buf, [routesCopy count]);
    v14 = *v99[0];
    v15 = [routesCopy objectAtIndexedSubscript:0];
    endRouteCoordinate = [v15 endRouteCoordinate];
    v17 = *buf;
    **buf = v14;
    *(v17 + 8) = 0;
    *(v17 + 16) = endRouteCoordinate;

    [v94 addShareSections:? shareCount:?];
    v18 = v94;
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (!self->_routeOverlapCache)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      routeOverlapCache = self->_routeOverlapCache;
      self->_routeOverlapCache = v19;

      [(NSCache *)self->_routeOverlapCache setCountLimit:10];
    }

    v87 = objc_alloc_init(MEMORY[0x1E69B3758]);
    for (i = 0; i < [routesCopy count]; ++i)
    {
      v22 = [routesCopy objectAtIndex:i];
      v23 = v22;
      if (v22 != v92)
      {
        v101[0] = v22;
        v101[1] = v92;
        v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
        v24 = _MKRouteContextBuilderCacheEntryKey(v90);
        v25 = self->_routeOverlapCache;
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
        v27 = [(NSCache *)v25 objectForKey:v26];

        overlapResults = [v27 overlapResults];
        LOBYTE(v26) = overlapResults == 0;

        if (v26)
        {
          v35 = MKGetMKRouteContextBuilderLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            uniqueRouteID = [v23 uniqueRouteID];
            uUIDString = [uniqueRouteID UUIDString];
            uniqueRouteID2 = [v92 uniqueRouteID];
            uUIDString2 = [uniqueRouteID2 UUIDString];
            *buf = 138412546;
            *&buf[4] = uUIDString;
            *&buf[12] = 2112;
            *&buf[14] = uUIDString2;
            _os_log_impl(&dword_1A2EA0000, v35, OS_LOG_TYPE_INFO, "Calling findFirstUniqueRangeBetweenRoutes because no cache entry was found for route pair %@, %@", buf, 0x16u);
          }

          overlapResults2 = [v87 findFirstUniqueRangeBetweenRoute:v23 andRoute:v92];
          v40 = [[_MKRouteContextBuilderCacheEntry alloc] initWithRoutes:v90];

          [(_MKRouteContextBuilderCacheEntry *)v40 setOverlapResults:overlapResults2];
          v41 = self->_routeOverlapCache;
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [(NSCache *)v41 setObject:v40 forKey:v30];
          v27 = v40;
        }

        else
        {
          overlapResults2 = [v27 overlapResults];
          v30 = MKGetMKRouteContextBuilderLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            uniqueRouteID3 = [v23 uniqueRouteID];
            uUIDString3 = [uniqueRouteID3 UUIDString];
            uniqueRouteID4 = [v92 uniqueRouteID];
            uUIDString4 = [uniqueRouteID4 UUIDString];
            *buf = 138412546;
            *&buf[4] = uUIDString3;
            *&buf[12] = 2112;
            *&buf[14] = uUIDString4;
            _os_log_impl(&dword_1A2EA0000, v30, OS_LOG_TYPE_INFO, "Cache entry was found for route pair %@, %@", buf, 0x16u);
          }
        }

        v42 = overlapResults2;

        if (![overlapResults2 count] || (objc_msgSend(overlapResults2, "objectAtIndexedSubscript:", 0), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "uniqueRanges"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count") == 0, v44, v43, v45))
        {
          v52 = 0;
          v53 = 0;
          v50 = 0xBF80000000000000;
          v51 = 0xBF80000000000000;
        }

        else
        {
          v46 = [overlapResults2 objectAtIndexedSubscript:0];
          uniqueRanges = [v46 uniqueRanges];
          v48 = [uniqueRanges coordinateRangeAtIndex:0];
          v53 = v49;

          v50 = v48 & 0xFFFFFFFF00000000;
          v51 = v53 & 0xFFFFFFFF00000000;
          v52 = v48;
          v53 = v53;
        }

        v54 = [objc_alloc(MEMORY[0x1E69DF3F0]) initWithComposedRoute:v23 etaText:0 divergenceRouteCoordinate:v52 | v50 convergenceRouteCoordinate:v53 | v51];
        [v88 addObject:v54];
        v55 = *(v99[0] + 8 * i);
        *(v99[0] + 8 * i) = v54;
      }
    }

    [v94 setAlternateRoutes:v88];
    v56 = _MKRouteContextBuilderCacheEntryKey(routesCopy);
    v57 = self->_routeOverlapCache;
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
    v91 = [(NSCache *)v57 objectForKey:v58];

    overlappingSections = [v91 overlappingSections];
    LOBYTE(v58) = overlappingSections == 0;

    v60 = MKGetMKRouteContextBuilderLog();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
    if (v58)
    {
      if (v61)
      {
        v64 = [routesCopy valueForKey:@"uniqueRouteID"];
        *buf = 138412290;
        *&buf[4] = v64;
        _os_log_impl(&dword_1A2EA0000, v60, OS_LOG_TYPE_INFO, "Calling findOverlappingSectionsForRoutes because no cache entry was found for route set %@", buf, 0xCu);
      }

      overlappingSections2 = [v87 findOverlappingSectionsForRoutes:routesCopy];
      v65 = [[_MKRouteContextBuilderCacheEntry alloc] initWithRoutes:routesCopy];

      [(_MKRouteContextBuilderCacheEntry *)v65 setOverlappingSections:overlappingSections2];
      v66 = self->_routeOverlapCache;
      v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      [(NSCache *)v66 setObject:v65 forKey:v67];

      v91 = v65;
    }

    else
    {
      if (v61)
      {
        v62 = [routesCopy valueForKey:@"uniqueRouteID"];
        *buf = 138412290;
        *&buf[4] = v62;
        _os_log_impl(&dword_1A2EA0000, v60, OS_LOG_TYPE_INFO, "Cache entry was found for route set %@", buf, 0xCu);
      }

      overlappingSections2 = [v91 overlappingSections];
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v68 = overlappingSections2;
    v69 = [v68 countByEnumeratingWithState:&v95 objects:v100 count:16];
    if (v69)
    {
      v70 = *v96;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v96 != v70)
          {
            objc_enumerationMutation(v68);
          }

          v72 = *(*(&v95 + 1) + 8 * j);
          components = [v72 components];
          std::vector<RouteSection>::vector[abi:ne200100](buf, [components count]);

          v74 = 0;
          for (k = 0; ; ++k)
          {
            components2 = [v72 components];
            v77 = k < [components2 count];

            if (!v77)
            {
              break;
            }

            components3 = [v72 components];
            v79 = [components3 objectAtIndexedSubscript:k];

            routeIndex = [v79 routeIndex];
            v81 = *(v99[0] + 8 * routeIndex);
            range = [v79 range];
            [v79 range];
            v83 = (*buf + v74);
            *v83 = v81;
            v83[1] = range;
            v83[2] = v84;

            v74 += 24;
          }

          [v94 addShareSections:? shareCount:?];
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        v69 = [v68 countByEnumeratingWithState:&v95 objects:v100 count:16];
      }

      while (v69);
    }

    v85 = v94;
  }

  *buf = v99;
  std::vector<VKRouteInfo * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);

  return v94;
}

@end