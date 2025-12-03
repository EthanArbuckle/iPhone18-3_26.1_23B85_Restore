@interface TransitRouteStepCell
+ (id)cellWithRoute:(id)route sign:(id)sign;
- (TransitRouteStepCell)initWithRoute:(id)route sign:(id)sign;
- (TransitSteppingCameraFramer)cameraFramer;
- (id)instructionStringsArray;
- (id)routeStep;
- (id)snapshotBlock;
- (int64_t)signIndexForSign:(id)sign;
- (int64_t)signIndexForStepIndex:(int64_t)index;
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
  sign = [(TransitRouteStepCell *)self sign];
  hasValidInstructions = [sign hasValidInstructions];

  if (hasValidInstructions)
  {
    v27 = NSFontAttributeName;
    v6 = [UIFont systemFontOfSize:13.5];
    v28 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    sign2 = [(TransitRouteStepCell *)self sign];
    majorFormattedInstruction = [sign2 majorFormattedInstruction];

    if (majorFormattedInstruction)
    {
      sign3 = [(TransitRouteStepCell *)self sign];
      majorFormattedInstruction2 = [sign3 majorFormattedInstruction];
      v12 = [NSAttributedString _mapkit_attributedStringForComposedString:majorFormattedInstruction2 defaultAttributes:v7];
      string = [v12 string];

      if (string)
      {
        [v3 addObject:string];
      }
    }

    sign4 = [(TransitRouteStepCell *)self sign];
    minorFormattedInstruction = [sign4 minorFormattedInstruction];

    if (minorFormattedInstruction)
    {
      sign5 = [(TransitRouteStepCell *)self sign];
      minorFormattedInstruction2 = [sign5 minorFormattedInstruction];
      v18 = [NSAttributedString _mapkit_attributedStringForComposedString:minorFormattedInstruction2 defaultAttributes:v7];
      string2 = [v18 string];

      if (string2)
      {
        [v3 addObject:string2];
      }
    }

    sign6 = [(TransitRouteStepCell *)self sign];
    tertiaryFormattedInstruction = [sign6 tertiaryFormattedInstruction];

    if (tertiaryFormattedInstruction)
    {
      sign7 = [(TransitRouteStepCell *)self sign];
      tertiaryFormattedInstruction2 = [sign7 tertiaryFormattedInstruction];
      v24 = [NSAttributedString _mapkit_attributedStringForComposedString:tertiaryFormattedInstruction2 defaultAttributes:v7];
      string3 = [v24 string];

      if (string3)
      {
        [v3 addObject:string3];
      }
    }
  }

  return v3;
}

- (unint64_t)numberOfSteps
{
  steppingSigns = [(GEOComposedRoute *)self->super._route steppingSigns];
  v3 = [steppingSigns count];

  return v3;
}

- (int64_t)signIndexForStepIndex:(int64_t)index
{
  route = [(RouteStepCell *)self route];
  steppingSigns = [route steppingSigns];
  v7 = [steppingSigns count];

  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  while (1)
  {
    route2 = [(RouteStepCell *)self route];
    steppingSigns2 = [route2 steppingSigns];
    v11 = [steppingSigns2 objectAtIndexedSubscript:v8];

    stepIndexRange = [v11 stepIndexRange];
    v14 = v13;

    if (index >= stepIndexRange && index - stepIndexRange < v14)
    {
      break;
    }

    ++v8;
    route3 = [(RouteStepCell *)self route];
    steppingSigns3 = [route3 steppingSigns];
    v17 = [steppingSigns3 count];

    if (v8 >= v17)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (int64_t)signIndexForSign:(id)sign
{
  signCopy = sign;
  step = [signCopy step];

  if (step)
  {
    step2 = [signCopy step];
  }

  else
  {
    segment = [signCopy segment];

    if (!segment)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    segment2 = [signCopy segment];
    steps = [segment2 steps];
    step2 = [steps firstObject];
  }

  v10 = -[TransitRouteStepCell signIndexForStepIndex:](self, "signIndexForStepIndex:", [step2 stepIndex]);

LABEL_6:
  return v10;
}

- (id)routeStep
{
  sign = [(TransitRouteStepCell *)self sign];
  step = [sign step];

  if (step)
  {
    sign2 = [(TransitRouteStepCell *)self sign];
    step2 = [sign2 step];
  }

  else
  {
    sign2 = [(RouteStepCell *)self route];
    sign3 = [(TransitRouteStepCell *)self sign];
    step2 = [sign2 stepAtIndex:{objc_msgSend(sign3, "stepIndexRange")}];
  }

  return step2;
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

- (TransitRouteStepCell)initWithRoute:(id)route sign:(id)sign
{
  signCopy = sign;
  routeCopy = route;
  sign = [(TransitRouteStepCell *)self sign];
  v9 = [(TransitRouteStepCell *)self signIndexForSign:sign];

  v12.receiver = self;
  v12.super_class = TransitRouteStepCell;
  v10 = [(RouteStepCell *)&v12 initWithRoute:routeCopy stepIndex:v9 mapType:104];

  if (v10)
  {
    [(TransitRouteStepCell *)v10 setSign:signCopy];
  }

  return v10;
}

+ (id)cellWithRoute:(id)route sign:(id)sign
{
  signCopy = sign;
  routeCopy = route;
  v8 = [[self alloc] initWithRoute:routeCopy sign:signCopy];

  return v8;
}

@end