@interface VNPersonsModelFaceModelDataSummarization
+ (id)summarizationOfDataFromProvider:(id)a3;
- (VNPersonsModelFaceModelDataSummarization)initWithPersonsCount:(unint64_t)a3 faceObservationCountsDistribution:(id)a4 personFaceObservationsCountHistogram:(id)a5;
- (id)description;
- (unint64_t)numberOfPersonsWithFaceObservationsCount:(unint64_t)a3;
@end

@implementation VNPersonsModelFaceModelDataSummarization

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Persons: %lu", -[VNPersonsModelFaceModelDataSummarization personsCount](self, "personsCount")];
  v4 = [(VNPersonsModelFaceModelDataSummarization *)self faceObservationCountsDistribution];
  if ([v4 count])
  {
    [v3 appendString:@" observation counts:"];
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__VNPersonsModelFaceModelDataSummarization_description__block_invoke;
    v6[3] = &unk_1E77B6758;
    v6[4] = self;
    v8 = v9;
    v7 = v3;
    [v4 enumerateIndexesWithOptions:2 usingBlock:v6];

    _Block_object_dispose(v9, 8);
  }

  return v3;
}

uint64_t __55__VNPersonsModelFaceModelDataSummarization_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) numberOfPersonsWithFaceObservationsCount:a2];
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) == 1)
  {
    [*(a1 + 40) appendString:{@", "}];
  }

  else
  {
    *(v5 + 24) = 1;
  }

  return [*(a1 + 40) appendFormat:@" %lu (%lu)", a2, v4];
}

- (unint64_t)numberOfPersonsWithFaceObservationsCount:(unint64_t)a3
{
  personFaceObservationsCountHistogram = self->_personFaceObservationsCountHistogram;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSCountedSet *)personFaceObservationsCountHistogram countForObject:v4];

  return v5;
}

- (VNPersonsModelFaceModelDataSummarization)initWithPersonsCount:(unint64_t)a3 faceObservationCountsDistribution:(id)a4 personFaceObservationsCountHistogram:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = VNPersonsModelFaceModelDataSummarization;
  v10 = [(VNPersonsModelFaceModelDataSummarization *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_personsCount = a3;
    v12 = [v8 copy];
    faceObservationCountsDistribution = v11->_faceObservationCountsDistribution;
    v11->_faceObservationCountsDistribution = v12;

    v14 = [v9 copy];
    personFaceObservationsCountHistogram = v11->_personFaceObservationsCountHistogram;
    v11->_personFaceObservationsCountHistogram = v14;
  }

  return v11;
}

+ (id)summarizationOfDataFromProvider:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 faceModelPersonsCount];
  v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [v4 faceModelNumberOfFaceObservationsForPersonAtIndex:i];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v6 addObject:v9];
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 addIndex:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "unsignedIntegerValue", v18)}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = [[a1 alloc] initWithPersonsCount:v5 faceObservationCountsDistribution:v10 personFaceObservationsCountHistogram:v11];

  return v16;
}

@end