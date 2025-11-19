@interface TransitRouteStepCell
+ (id)cellWithRoute:(id)a3 sign:(id)a4;
- (TransitRouteStepCell)initWithRoute:(id)a3 sign:(id)a4;
- (TransitSteppingCameraFramer)cameraFramer;
- (id)instructionStringsArray;
- (id)routeStep;
- (id)snapshotBlock;
- (int64_t)signIndexForSign:(id)a3;
- (int64_t)signIndexForStepIndex:(int64_t)a3;
- (unint64_t)numberOfSteps;
@end

@implementation TransitRouteStepCell

- (id)snapshotBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A099C0;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)instructionStringsArray
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(TransitRouteStepCell *)self sign];
  v5 = [v4 hasValidInstructions];

  if (v5)
  {
    v27 = NSFontAttributeName;
    v6 = [UIFont systemFontOfSize:13.5];
    v28 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v8 = [(TransitRouteStepCell *)self sign];
    v9 = [v8 majorFormattedInstruction];

    if (v9)
    {
      v10 = [(TransitRouteStepCell *)self sign];
      v11 = [v10 majorFormattedInstruction];
      v12 = [NSAttributedString _mapkit_attributedStringForComposedString:v11 defaultAttributes:v7];
      v13 = [v12 string];

      if (v13)
      {
        [v3 addObject:v13];
      }
    }

    v14 = [(TransitRouteStepCell *)self sign];
    v15 = [v14 minorFormattedInstruction];

    if (v15)
    {
      v16 = [(TransitRouteStepCell *)self sign];
      v17 = [v16 minorFormattedInstruction];
      v18 = [NSAttributedString _mapkit_attributedStringForComposedString:v17 defaultAttributes:v7];
      v19 = [v18 string];

      if (v19)
      {
        [v3 addObject:v19];
      }
    }

    v20 = [(TransitRouteStepCell *)self sign];
    v21 = [v20 tertiaryFormattedInstruction];

    if (v21)
    {
      v22 = [(TransitRouteStepCell *)self sign];
      v23 = [v22 tertiaryFormattedInstruction];
      v24 = [NSAttributedString _mapkit_attributedStringForComposedString:v23 defaultAttributes:v7];
      v25 = [v24 string];

      if (v25)
      {
        [v3 addObject:v25];
      }
    }
  }

  return v3;
}

- (unint64_t)numberOfSteps
{
  v2 = [(GEOComposedRoute *)self->super._route steppingSigns];
  v3 = [v2 count];

  return v3;
}

- (int64_t)signIndexForStepIndex:(int64_t)a3
{
  v5 = [(RouteStepCell *)self route];
  v6 = [v5 steppingSigns];
  v7 = [v6 count];

  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  while (1)
  {
    v9 = [(RouteStepCell *)self route];
    v10 = [v9 steppingSigns];
    v11 = [v10 objectAtIndexedSubscript:v8];

    v12 = [v11 stepIndexRange];
    v14 = v13;

    if (a3 >= v12 && a3 - v12 < v14)
    {
      break;
    }

    ++v8;
    v15 = [(RouteStepCell *)self route];
    v16 = [v15 steppingSigns];
    v17 = [v16 count];

    if (v8 >= v17)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (int64_t)signIndexForSign:(id)a3
{
  v4 = a3;
  v5 = [v4 step];

  if (v5)
  {
    v6 = [v4 step];
  }

  else
  {
    v7 = [v4 segment];

    if (!v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    v8 = [v4 segment];
    v9 = [v8 steps];
    v6 = [v9 firstObject];
  }

  v10 = -[TransitRouteStepCell signIndexForStepIndex:](self, "signIndexForStepIndex:", [v6 stepIndex]);

LABEL_6:
  return v10;
}

- (id)routeStep
{
  v3 = [(TransitRouteStepCell *)self sign];
  v4 = [v3 step];

  if (v4)
  {
    v5 = [(TransitRouteStepCell *)self sign];
    v6 = [v5 step];
  }

  else
  {
    v5 = [(RouteStepCell *)self route];
    v7 = [(TransitRouteStepCell *)self sign];
    v6 = [v5 stepAtIndex:{objc_msgSend(v7, "stepIndexRange")}];
  }

  return v6;
}

- (TransitSteppingCameraFramer)cameraFramer
{
  cameraFramer = self->_cameraFramer;
  if (!cameraFramer)
  {
    v4 = objc_alloc_init(TransitSteppingCameraFramer);
    v5 = self->_cameraFramer;
    self->_cameraFramer = v4;

    cameraFramer = self->_cameraFramer;
  }

  return cameraFramer;
}

- (TransitRouteStepCell)initWithRoute:(id)a3 sign:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransitRouteStepCell *)self sign];
  v9 = [(TransitRouteStepCell *)self signIndexForSign:v8];

  v12.receiver = self;
  v12.super_class = TransitRouteStepCell;
  v10 = [(RouteStepCell *)&v12 initWithRoute:v7 stepIndex:v9 mapType:104];

  if (v10)
  {
    [(TransitRouteStepCell *)v10 setSign:v6];
  }

  return v10;
}

+ (id)cellWithRoute:(id)a3 sign:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRoute:v7 sign:v6];

  return v8;
}

@end