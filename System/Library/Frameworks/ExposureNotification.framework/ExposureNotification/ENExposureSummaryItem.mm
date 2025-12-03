@interface ENExposureSummaryItem
- (ENExposureSummaryItem)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
- (void)roundDurations;
@end

@implementation ENExposureSummaryItem

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  maximumScore = self->_maximumScore;
  xdict = objectCopy;
  if (maximumScore != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "mxSc", maximumScore);
    objectCopy = xdict;
  }

  scoreSum = self->_scoreSum;
  if (scoreSum != 0.0)
  {
    xpc_dictionary_set_double(xdict, "scoreSum", scoreSum);
    objectCopy = xdict;
  }

  weightedDurationSum = self->_weightedDurationSum;
  if (weightedDurationSum != 0.0)
  {
    xpc_dictionary_set_double(xdict, "wds", weightedDurationSum);
    objectCopy = xdict;
  }
}

- (id)description
{
  weightedDurationSum = self->_weightedDurationSum;
  v3 = *&self->_maximumScore;
  return NSPrintF();
}

- (void)roundDurations
{
  v2 = vdupq_n_s64(0x404E000000000000uLL);
  *&self->_maximumScore = vmulq_f64(vrndpq_f64(vdivq_f64(*&self->_maximumScore, v2)), v2);
  self->_weightedDurationSum = ceil(self->_weightedDurationSum / 60.0) * 60.0;
}

- (ENExposureSummaryItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENExposureSummaryItem *)self init];
  if (!v7)
  {
    if (error)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
LABEL_11:
      ENErrorF(2);
      *error = v8 = 0;
      goto LABEL_7;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (!OUTLINED_FUNCTION_2() || !OUTLINED_FUNCTION_2() || !OUTLINED_FUNCTION_2())
  {
    goto LABEL_12;
  }

  v8 = v7;
LABEL_7:

  return v8;
}

@end