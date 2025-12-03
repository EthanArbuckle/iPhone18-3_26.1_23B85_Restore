@interface UIAlertAction
+ (id)_maps_actionWithTitle:(id)title style:(int64_t)style timeout:(double)timeout handler:(id)handler;
+ (id)_maps_alertActionsForTransitLines:(id)lines selectionHandlers:(id)handlers;
+ (id)_maps_alertActionsForTransitLinesWithNames:(id)names artworks:(id)artworks selectionHandlers:(id)handlers;
@end

@implementation UIAlertAction

+ (id)_maps_alertActionsForTransitLines:(id)lines selectionHandlers:(id)handlers
{
  linesCopy = lines;
  handlersCopy = handlers;
  v7 = [linesCopy count];
  if (v7 == [handlersCopy count])
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v10 = v9;

    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(linesCopy, "count")}];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1009F8BD4;
    v24[3] = &unk_1016319C0;
    v27 = v10;
    v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(linesCopy, "count")}];
    v25 = v12;
    v26 = v28;
    [linesCopy enumerateObjectsUsingBlock:v24];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1009F8CEC;
    v18[3] = &unk_101631A08;
    v13 = v12;
    v19 = v13;
    v22 = v28;
    v23 = v10;
    v20 = handlersCopy;
    v14 = v11;
    v21 = v14;
    [linesCopy enumerateObjectsUsingBlock:v18];
    v15 = v21;
    v16 = v14;

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_maps_alertActionsForTransitLinesWithNames:(id)names artworks:(id)artworks selectionHandlers:(id)handlers
{
  namesCopy = names;
  artworksCopy = artworks;
  handlersCopy = handlers;
  v11 = [namesCopy count];
  if (v11 == [artworksCopy count] && (v12 = objc_msgSend(namesCopy, "count"), v12 == objc_msgSend(handlersCopy, "count")))
  {
    selfCopy = self;
    v13 = [namesCopy count];
    v14 = [[NSMutableArray alloc] initWithCapacity:v13];
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v16 = [namesCopy objectAtIndexedSubscript:i];
        v17 = +[NSNull null];
        if ([v16 isEqual:v17])
        {
          v18 = 0;
        }

        else
        {
          v18 = [namesCopy objectAtIndexedSubscript:i];
        }

        v19 = [artworksCopy objectAtIndexedSubscript:i];
        v20 = +[NSNull null];
        if ([v19 isEqual:v20])
        {
          v21 = 0;
        }

        else
        {
          v21 = [artworksCopy objectAtIndexedSubscript:i];
        }

        v22 = [[_GEOTransitLineWrapper alloc] initWithName:v18 artwork:v21];
        [v14 addObject:v22];
      }
    }

    v23 = [selfCopy _maps_alertActionsForTransitLines:v14 selectionHandlers:handlersCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_maps_actionWithTitle:(id)title style:(int64_t)style timeout:(double)timeout handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  if (([UIAlertAction instancesRespondToSelector:"setTitle:"]& 1) != 0)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    timeout = [titleCopy stringByAppendingFormat:@" (%ds)", timeout];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100F97D14;
    v30[3] = &unk_10165F800;
    v32 = v33;
    v12 = handlerCopy;
    v31 = v12;
    v13 = [UIAlertAction actionWithTitle:timeout style:style handler:v30];

    +[NSDate timeIntervalSinceReferenceDate];
    v15 = v14;
    objc_initWeak(&location, v13);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v36 = sub_100F97D3C;
    *(&v36 + 1) = sub_100F97D4C;
    v37 = 0;
    v16 = &_dispatch_main_q;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100F97D54;
    v23[3] = &unk_10165F828;
    v28[1] = v15;
    v28[2] = *&timeout;
    v26 = buf;
    objc_copyWeak(v28, &location);
    v25 = v12;
    v27 = v33;
    v24 = titleCopy;
    v17 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:1 repeating:v23 block:1.0];
    v18 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v17;

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(v28);
    objc_destroyWeak(&location);

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "+[UIAlertAction(MapsExtras) _maps_actionWithTitle:style:timeout:handler:]";
      *&buf[12] = 2080;
      *&buf[14] = "UIAlertAction+MapsExtras.m";
      *&buf[22] = 1024;
      LODWORD(v36) = 27;
      WORD2(v36) = 2080;
      *(&v36 + 6) = "canUpdateTitle";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v13 = [UIAlertAction actionWithTitle:titleCopy style:style handler:handlerCopy];
  }

  return v13;
}

@end