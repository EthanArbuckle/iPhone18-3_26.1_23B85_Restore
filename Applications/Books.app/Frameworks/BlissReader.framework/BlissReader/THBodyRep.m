@interface THBodyRep
- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5;
- (THBodyRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)hitRep:(CGPoint)a3;
- (id)hitRepChrome:(CGPoint)a3;
- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)marginNotesController;
- (id)marginNotesOwner;
- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4;
- (id)siblings;
- (id)storage;
- (void)dealloc;
- (void)setupMarginNotesControllerForHighlightController:(id)a3;
- (void)updateFromLayout;
- (void)willBeRemoved;
@end

@implementation THBodyRep

- (THBodyRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = THBodyRep;
  v4 = [(THWPRep *)&v7 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    [objc_msgSend(-[THBodyRep canvas](v4 "canvas")];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THBodyRep;
  [(THWPRep *)&v2 dealloc];
}

- (id)storage
{
  v2 = [(THBodyRep *)self info];

  return [v2 bodyStorage];
}

- (id)hitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = [-[THBodyRep columns](self "columns")];
  if (result)
  {
    v7.receiver = self;
    v7.super_class = THBodyRep;
    return [(THWPRep *)&v7 hitRep:x, y];
  }

  return result;
}

- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  result = [-[THBodyRep columns](self "columns")];
  if (result)
  {
    v10.receiver = self;
    v10.super_class = THBodyRep;
    return [(THBodyRep *)&v10 hitReps:x withSlop:y, width, height];
  }

  return result;
}

- (id)hitRepChrome:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = [-[THBodyRep columns](self "columns")];
  if (result)
  {
    v7.receiver = self;
    v7.super_class = THBodyRep;
    return [(THBodyRep *)&v7 hitRepChrome:x, y];
  }

  return result;
}

- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 range];
  if (v5 && v7 <= a4)
  {
    return v7 + v8 > a4;
  }

  v10 = v7 + v8 >= a4;
  if (v7 >= a4)
  {
    v10 = 0;
  }

  return !v5 && v10;
}

- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4
{
  v4 = a4;
  if ([(THBodyRep *)self p_doesRep:self containCharIndex:a3 isStart:a4])
  {
    return self;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(THBodyRep *)self siblings];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *v15;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v15 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v7 = *(*(&v14 + 1) + 8 * v12);
    if ([(THBodyRep *)self p_doesRep:v7 containCharIndex:a3 isStart:v4])
    {
      return v7;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = 0;
      if (v10)
      {
        goto LABEL_5;
      }

      return v7;
    }
  }
}

- (id)siblings
{
  v3 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [objc_msgSend(objc_msgSend(objc_msgSend(-[THBodyRep parentRep](self "parentRep")];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 modelBodyInfos];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [-[THBodyRep interactiveCanvasController](self "interactiveCanvasController")];
              if (v14)
              {
                v15 = v14 == self;
              }

              else
              {
                v15 = 1;
              }

              if (!v15)
              {
                [v3 addObject:v14];
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)willBeRemoved
{
  [objc_msgSend(-[THBodyRep canvas](self "canvas")];
  v3.receiver = self;
  v3.super_class = THBodyRep;
  [(THWPRep *)&v3 willBeRemoved];
}

- (void)updateFromLayout
{
  v2.receiver = self;
  v2.super_class = THBodyRep;
  [(THWPRep *)&v2 updateFromLayout];
}

- (id)marginNotesController
{
  v2 = [(THBodyRep *)self parentRep];

  return [v2 marginNotesController];
}

- (id)marginNotesOwner
{
  [(THBodyRep *)self parentRep];

  return TSUProtocolCast();
}

- (void)setupMarginNotesControllerForHighlightController:(id)a3
{
  v4 = [(THBodyRep *)self marginNotesController];

  [a3 setMarginNotesController:v4];
}

@end