@interface MKLocationShifter
@end

@implementation MKLocationShifter

void __91___MKLocationShifter__prepareShiftForLocation_withCompletionHandler_withShiftRequestBlock___block_invoke(uint64_t a1, double a2, double a3)
{
  v15 = 0u;
  memset(v16, 0, 60);
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  memset(&v12[2], 0, 32);
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 clientLocation];
    v6 = *(a1 + 32);
  }

  *(&v12[2] + 4) = a2;
  *(&v12[2] + 12) = a3;
  [v6 rawCourse];
  *(v14 + 12) = v7;
  *(v16 + 4) = a2;
  *(v16 + 12) = a3;
  DWORD1(v16[2]) = 2;
  v8 = objc_alloc(MEMORY[0x1E6985C40]);
  v9 = [*(a1 + 32) coarseMetaData];
  v11[6] = v16[0];
  v11[7] = v16[1];
  v12[0] = v16[2];
  *(v12 + 12) = *(&v16[2] + 12);
  v11[2] = v13;
  v11[3] = v14[0];
  v11[4] = v14[1];
  v11[5] = v15;
  v11[0] = v12[2];
  v11[1] = v12[3];
  v10 = [v8 initWithClientLocation:v11 coarseMetaData:v9];

  (*(*(a1 + 40) + 16))();
}

void __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = a2;
  [v5 horizontalAccuracy];
  v10 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_2;
  v11[3] = &unk_1E76C95A8;
  v12 = *(a1 + 56);
  [v6 shiftLatLng:v8 accuracy:v7 withCompletionHandler:0 mustGoToNetworkCallback:v11 errorHandler:*(a1 + 48) callbackQueue:v10];
}

void __58___MKLocationShifter_shiftLocation_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = a2;
  [v4 horizontalAccuracy];
  [v5 shiftLatLng:v7 accuracy:v6 withCompletionHandler:0 mustGoToNetworkCallback:0 errorHandler:MEMORY[0x1E69E96A0] callbackQueue:?];
}

@end