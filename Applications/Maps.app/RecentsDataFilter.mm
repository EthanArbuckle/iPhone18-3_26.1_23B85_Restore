@interface RecentsDataFilter
- (RecentsDataFilter)initWithSearchMode:(unsigned int)a3 filterPredicate:(id)a4;
- (id)filteredRecents:(id)a3 excludingDuplicatesOfEntries:(id)a4;
@end

@implementation RecentsDataFilter

- (id)filteredRecents:(id)a3 excludingDuplicatesOfEntries:(id)a4
{
  v5 = a3;
  v50 = a4;
  v6 = sub_1000410AC();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Filter", "", buf, 2u);
  }

  v7 = [(RecentsDataFilter *)self filterPredicate];

  if (v7)
  {
    v8 = [(RecentsDataFilter *)self filterPredicate];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v51 = v10;
  if (![v10 count])
  {
    v47 = &__NSArray0__struct;
    goto LABEL_58;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_100666DAC;
  v110[3] = &unk_101625068;
  v49 = v11;
  v111 = v49;
  v61 = objc_retainBlock(v110);
  v55 = +[NSMutableSet set];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v12 = v50;
  v13 = [v12 countByEnumeratingWithState:&v106 objects:v116 count:16];
  if (v13)
  {
    v14 = *v107;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v107 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v106 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 MKMapItem];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v17 = [v16 mapItem];
        }

        v18 = v17;
        if (v17)
        {
          v19 = [v17 _geoMapItem];
          v20 = (v61[2])(v61, v19);

          [v55 addObject:v20];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v106 objects:v116 count:16];
    }

    while (v13);
  }

  v52 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v51 count]);
  *buf = 0;
  v101 = buf;
  v102 = 0x3032000000;
  v103 = sub_100666E5C;
  v104 = sub_100666E6C;
  v105 = +[NSMutableDictionary dictionary];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100666E74;
  v99[3] = &unk_101625090;
  v99[4] = buf;
  v21 = objc_retainBlock(v99);
  v60 = +[NSMutableSet set];
  v59 = +[NSMutableSet set];
  v58 = +[NSMutableDictionary dictionary];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v51;
  v22 = [obj countByEnumeratingWithState:&v95 objects:v115 count:16];
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = *v96;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v96 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v95 + 1) + 8 * j);
      v26 = (v21[2])(v21, v25);
      v27 = v26;
      if (v26)
      {
        v28 = [v26 historyEntry];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_100666F7C;
        v89[3] = &unk_101625138;
        v94 = v61;
        v90 = v60;
        v91 = v58;
        v92 = v27;
        v93 = v59;
        [v28 ifSearch:&stru_1016250D0 ifRoute:&stru_101625110 ifPlaceDisplay:v89 ifTransitLineItem:&stru_101625158];

        v29 = v94;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_30;
        }

        v29 = v25;
        v30 = [v29 mapItem];
        v31 = [v30 _geoMapItem];
        v32 = (v61[2])(v61, v31);

        [v60 addObject:v32];
      }

LABEL_30:
    }

    v22 = [obj countByEnumeratingWithState:&v95 objects:v115 count:16];
  }

  while (v22);
LABEL_32:

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v53 = obj;
  v33 = [v53 countByEnumeratingWithState:&v85 objects:v114 count:16];
  if (!v33)
  {
    goto LABEL_54;
  }

  v57 = *v86;
  while (2)
  {
    v34 = 0;
    while (2)
    {
      if (*v86 != v57)
      {
        objc_enumerationMutation(v53);
      }

      v35 = *(*(&v85 + 1) + 8 * v34);
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v84 = 1;
      *v75 = 0;
      v76 = v75;
      v77 = 0x3032000000;
      v78 = sub_100666E5C;
      v79 = sub_100666E6C;
      v80 = 0;
      v36 = (v21[2])(v21, v35);
      v37 = v36;
      if (v36)
      {
        v38 = [v36 historyEntry];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100667050;
        v72[3] = &unk_101656AC0;
        v74 = &v81;
        v73 = v59;
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1006670BC;
        v65[3] = &unk_101625180;
        v65[4] = self;
        v70 = &v81;
        v71 = v75;
        v39 = v61;
        v69 = v39;
        v66 = v60;
        v67 = v58;
        v68 = v37;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_100667254;
        v62[3] = &unk_10162B030;
        v64 = v75;
        v63 = v39;
        [v38 ifSearch:v72 ifRoute:v65 ifPlaceDisplay:v62 ifTransitLineItem:&stru_1016251A0];

        v40 = v73;
        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v35;
        v41 = [v40 mapItem];
        v42 = [v41 _geoMapItem];
        v43 = (v61[2])(v61, v42);
        v44 = *(v76 + 5);
        *(v76 + 5) = v43;

LABEL_41:
      }

      if (*(v82 + 24) != 1)
      {
        goto LABEL_49;
      }

      if (!*(v76 + 5))
      {
        goto LABEL_47;
      }

      if ([v55 containsObject:?])
      {
        *(v82 + 24) = 0;
        goto LABEL_49;
      }

      if (v82[3])
      {
LABEL_47:
        [v52 addObject:v35];
        if (*(v76 + 5))
        {
          [v55 addObject:?];
        }
      }

      else
      {
LABEL_49:
        v45 = sub_1000410AC();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *v112 = 138412290;
          v113 = v35;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "RDFilter discard %@", v112, 0xCu);
        }
      }

      _Block_object_dispose(v75, 8);
      _Block_object_dispose(&v81, 8);
      if (v33 != ++v34)
      {
        continue;
      }

      break;
    }

    v33 = [v53 countByEnumeratingWithState:&v85 objects:v114 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v46 = sub_1000410AC();
  if (os_signpost_enabled(v46))
  {
    *v75 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Filter", "", v75, 2u);
  }

  v47 = [v52 copy];
  _Block_object_dispose(buf, 8);

LABEL_58:

  return v47;
}

- (RecentsDataFilter)initWithSearchMode:(unsigned int)a3 filterPredicate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RecentsDataFilter;
  v8 = [(RecentsDataFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_searchMode = a3;
    objc_storeStrong(&v8->_filterPredicate, a4);
  }

  return v9;
}

@end