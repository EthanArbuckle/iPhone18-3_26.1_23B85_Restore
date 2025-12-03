@interface SRECGSampleArray
- (SRECGSampleArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
@end

@implementation SRECGSampleArray

- (SRECGSampleArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if ([representation length])
  {
    v8 = [objc_alloc(MEMORY[0x1E69A2B58]) initWithBinarySampleRepresentation:representation metadata:metadata];
    if (v8)
    {
      v9 = v8;
      v10 = [[SRElectrocardiogramSample alloc] initWithHAECGSample:v8];
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v10, 0}];

      return v11;
    }

    else
    {

      v13 = MEMORY[0x1E695DEC8];

      return objc_alloc_init(v13);
    }
  }

  else
  {

    return 0;
  }
}

@end