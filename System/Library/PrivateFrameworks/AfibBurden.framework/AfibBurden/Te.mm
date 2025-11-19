@interface Te
@end

@implementation Te

void __67__Te_c3seuakuh8_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[Te_c3seuakuh8 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__Te_c3seuakuh8_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [Te_c3seuakuh8Output alloc];
    v7 = [v12 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [(Te_c3seuakuh8Output *)v6 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void __66__Te_c3seuakuh8_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [Te_c3seuakuh8Output alloc];
    v7 = [v12 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [(Te_c3seuakuh8Output *)v6 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void __67__Te_tjejjxf8q3_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[Te_tjejjxf8q3 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__Te_tjejjxf8q3_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [Te_tjejjxf8q3Output alloc];
    v7 = [v12 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [(Te_tjejjxf8q3Output *)v6 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void __66__Te_tjejjxf8q3_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [Te_tjejjxf8q3Output alloc];
    v7 = [v12 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [(Te_tjejjxf8q3Output *)v6 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

@end