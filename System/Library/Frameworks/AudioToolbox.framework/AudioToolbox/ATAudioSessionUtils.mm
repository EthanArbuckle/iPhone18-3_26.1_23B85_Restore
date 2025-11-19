@interface ATAudioSessionUtils
+ (__CFString)getAudioSessionPortType:(id)a3 forInput:(BOOL)a4;
+ (id)categories;
+ (id)getMappedObjectOf:(id)a3 inside:(id)a4 ofType:(int)a5;
+ (id)getRouteDescriptionFromAVASRouteDescription:(id)a3;
+ (id)getRouteStringFromAVASRouteDescription:(id)a3;
+ (id)inputPortTypes;
+ (id)modes;
+ (id)outputPortTypes;
+ (unint64_t)getCategoryOptionFromPropertyID:(unsigned int)a3;
+ (unsigned)getAudioSessionCategory:(id)a3;
+ (unsigned)getAudioSessionMode:(id)a3;
+ (unsigned)getAudioSessionProperty:(id)a3;
@end

@implementation ATAudioSessionUtils

+ (id)getRouteStringFromAVASRouteDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 inputs];
  v6 = [a1 getPorts:v5 forInput:1];

  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 objectForKey:@"RouteDetailedDescription_PortType"];
  }

  else
  {
    v8 = &stru_1F37CAF70;
  }

  v9 = [v4 outputs];
  v10 = [a1 getPorts:v9 forInput:0];

  if ([v10 count])
  {
    v11 = [v10 firstObject];
    v12 = [v11 objectForKey:@"RouteDetailedDescription_PortType"];
    if ([(__CFString *)v8 length])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@+%@", v8, v12];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v8 = v14;
  }

  return v8;
}

+ (id)getRouteDescriptionFromAVASRouteDescription:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 inputs];
  v7 = [a1 getPorts:v6 forInput:1];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"RouteDetailedDescription_Inputs"];
  }

  v8 = [v4 outputs];
  v9 = [a1 getPorts:v8 forInput:0];

  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"RouteDetailedDescription_Outputs"];
  }

  return v5;
}

+ (id)outputPortTypes
{
  v32[9] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D6B8];
  v31[0] = @"LineOut";
  v31[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v32[0] = v3;
  v4 = *MEMORY[0x1E698D6A0];
  v30[0] = @"Headphones";
  v30[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v32[1] = v5;
  v6 = *MEMORY[0x1E698D658];
  v29[0] = @"BluetoothHFPOutput";
  v29[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v32[2] = v7;
  v8 = *MEMORY[0x1E698D650];
  v28[0] = @"BluetoothA2DPOutput";
  v28[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v32[3] = v9;
  v10 = *MEMORY[0x1E698D670];
  v27[0] = @"Receiver";
  v27[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v32[4] = v11;
  v12 = *MEMORY[0x1E698D688];
  v26[0] = @"Speaker";
  v26[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v32[5] = v13;
  v14 = *MEMORY[0x1E698D6C0];
  v25[0] = @"USBOutput";
  v25[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v32[6] = v15;
  v16 = *MEMORY[0x1E698D698];
  v24[0] = @"HDMIOutput";
  v24[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v32[7] = v17;
  v18 = *MEMORY[0x1E698D648];
  v23[0] = @"AirPlay";
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v32[8] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:9];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)inputPortTypes
{
  v20[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D6B0];
  v19[0] = @"LineIn";
  v19[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v20[0] = v3;
  v4 = *MEMORY[0x1E698D660];
  v18[0] = @"MicrophoneBuiltIn";
  v18[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v20[1] = v5;
  v6 = *MEMORY[0x1E698D6A8];
  v17[0] = @"MicrophoneWired";
  v17[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v20[2] = v7;
  v8 = *MEMORY[0x1E698D658];
  v16[0] = @"MicrophoneBluetooth";
  v16[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v20[3] = v9;
  v10 = *MEMORY[0x1E698D6C0];
  v15[0] = @"USBInput";
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v20[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)modes
{
  v32[28] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D5C8];
  v31[0] = &unk_1F37D3D60;
  v31[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v32[0] = v3;
  v4 = *MEMORY[0x1E698D628];
  v30[0] = &unk_1F37D3D78;
  v30[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v32[1] = v5;
  v6 = *MEMORY[0x1E698D620];
  v29[0] = &unk_1F37D3D90;
  v29[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v32[2] = v7;
  v8 = *MEMORY[0x1E698D5E0];
  v28[0] = &unk_1F37D3DA8;
  v28[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v32[3] = v9;
  v10 = *MEMORY[0x1E698D5D8];
  v27[0] = &unk_1F37D3DC0;
  v27[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v32[4] = v11;
  v12 = *MEMORY[0x1E698D618];
  v26[0] = &unk_1F37D3DD8;
  v26[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v32[5] = v13;
  v32[6] = &unk_1F37D4288;
  v14 = *MEMORY[0x1E698D5E8];
  v25[0] = &unk_1F37D3E08;
  v25[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v32[7] = v15;
  v16 = *MEMORY[0x1E698D610];
  v24[0] = &unk_1F37D3E20;
  v24[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v32[8] = v17;
  v18 = *MEMORY[0x1E698D638];
  v23[0] = &unk_1F37D3E38;
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v32[9] = v19;
  v32[10] = &unk_1F37D42A0;
  v32[11] = &unk_1F37D42B8;
  v32[12] = &unk_1F37D42D0;
  v32[13] = &unk_1F37D42E8;
  v32[14] = &unk_1F37D4300;
  v32[15] = &unk_1F37D4318;
  v32[16] = &unk_1F37D4330;
  v32[17] = &unk_1F37D4348;
  v32[18] = &unk_1F37D4360;
  v32[19] = &unk_1F37D4378;
  v32[20] = &unk_1F37D4390;
  v32[21] = &unk_1F37D43A8;
  v32[22] = &unk_1F37D43C0;
  v32[23] = &unk_1F37D43D8;
  v32[24] = &unk_1F37D43F0;
  v32[25] = &unk_1F37D4408;
  v32[26] = &unk_1F37D4420;
  v32[27] = &unk_1F37D4438;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:28];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)categories
{
  v24[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D508];
  v23[0] = &unk_1F37D3CA0;
  v23[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v24[0] = v3;
  v4 = *MEMORY[0x1E698D548];
  v22[0] = &unk_1F37D3CB8;
  v22[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v24[1] = v5;
  v6 = *MEMORY[0x1E698D520];
  v21[0] = &unk_1F37D3CD0;
  v21[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v24[2] = v7;
  v8 = *MEMORY[0x1E698D538];
  v20[0] = &unk_1F37D3CE8;
  v20[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v24[3] = v9;
  v10 = *MEMORY[0x1E698D518];
  v19[0] = &unk_1F37D3D00;
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v24[4] = v11;
  v24[5] = &unk_1F37D4270;
  v18[0] = &unk_1F37D3D30;
  v18[1] = v2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v24[6] = v12;
  v17[0] = &unk_1F37D3D48;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v24[7] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:8];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)getMappedObjectOf:(id)a3 inside:(id)a4 ofType:(int)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF contains [c] %@", v7];
  v10 = [v8 filteredArrayUsingPredicate:v9];
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 objectAtIndexedSubscript:a5];

    goto LABEL_11;
  }

  if (kAudioSessionClientLogSubsystem)
  {
    v13 = *kAudioSessionClientLogSubsystem;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v18 = "ATAudioSessionUtils.mm";
    v19 = 1024;
    v20 = 111;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Invalid item requested %@", buf, 0x1Cu);
  }

  v13 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (__CFString)getAudioSessionPortType:(id)a3 forInput:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [a1 inputPortTypes];
  }

  else
  {
    [a1 outputPortTypes];
  }
  v7 = ;
  v8 = [a1 getMappedObjectOf:v6 inside:v7 ofType:0];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

+ (unsigned)getAudioSessionMode:(id)a3
{
  v4 = a3;
  v5 = [a1 modes];
  v6 = [a1 getMappedObjectOf:v4 inside:v5 ofType:0];
  v7 = [v6 unsignedIntValue];

  return v7;
}

+ (unsigned)getAudioSessionCategory:(id)a3
{
  v4 = a3;
  v5 = [a1 categories];
  v6 = [a1 getMappedObjectOf:v4 inside:v5 ofType:0];
  v7 = [v6 unsignedIntValue];

  return v7;
}

+ (unsigned)getAudioSessionProperty:(id)a3
{
  v4 = a3;
  v5 = [a1 KVOProperties];
  v6 = [a1 getMappedObjectOf:v4 inside:v5 ofType:0];
  v7 = [v6 unsignedIntValue];

  return v7;
}

+ (unint64_t)getCategoryOptionFromPropertyID:(unsigned int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 > 1668509802)
  {
    if (a3 == 1668509803)
    {
      result = 8;
      goto LABEL_17;
    }

    if (a3 == 1685414763)
    {
      result = 2;
      goto LABEL_17;
    }
  }

  else
  {
    if (a3 == 1667394677)
    {
      result = 4;
      goto LABEL_17;
    }

    if (a3 == 1668114808)
    {
      result = 1;
      goto LABEL_17;
    }
  }

  if (kAudioSessionClientLogSubsystem)
  {
    result = *kAudioSessionClientLogSubsystem;
    v4 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "ATAudioSessionUtils.mm";
    v9 = 1024;
    v10 = 39;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid Category option requested", &v7, 0x12u);
  }

  result = 0;
LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end