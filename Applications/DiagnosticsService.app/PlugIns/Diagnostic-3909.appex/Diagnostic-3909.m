void sub_1000016C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Block_object_dispose((v29 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100001720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 acceleration];
    v10 = *(*(a1 + 40) + 8);
    if (v7 > *(v10 + 24))
    {
      *(v10 + 24) = v7;
    }

    v11 = *(*(a1 + 48) + 8);
    if (v7 < *(v11 + 24))
    {
      *(v11 + 24) = v7;
    }

    v12 = *(*(a1 + 56) + 8);
    if (v8 > *(v12 + 24))
    {
      *(v12 + 24) = v8;
    }

    v13 = *(*(a1 + 64) + 8);
    if (v8 < *(v13 + 24))
    {
      *(v13 + 24) = v8;
    }

    v14 = *(*(a1 + 72) + 8);
    if (v9 > *(v14 + 24))
    {
      *(v14 + 24) = v9;
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 24);
    if (v9 < v16)
    {
      *(v15 + 24) = v9;
      v16 = *(*(*(a1 + 80) + 8) + 24);
    }

    v17 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(*(*(a1 + 56) + 8) + 24);
    v20 = *(*(*(a1 + 64) + 8) + 24);
    v21 = *(*(*(a1 + 72) + 8) + 24);
    v22 = vabdd_f64(v17, v18);
    v23 = vabdd_f64(v19, v20);
    v24 = vabdd_f64(v21, v16);
    if (v23 < v24)
    {
      v23 = v24;
    }

    if (v22 >= v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = [*(a1 + 32) threshold];
    [v26 doubleValue];
    v28 = v27;

    if (v25 > v28)
    {
      v29 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [*(a1 + 32) threshold];
        [v33 doubleValue];
        v34 = [NSNumber numberWithDouble:?];
        v35 = [NSNumber numberWithDouble:v17 - v18];
        v36 = [NSNumber numberWithDouble:v19 - v20];
        v37 = [NSNumber numberWithDouble:v21 - v16];
        v38 = 138413058;
        v39 = v34;
        v40 = 2112;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Motion detection threshold value %@ exceeded. X: %@ Y: %@ Z: %@", &v38, 0x2Au);
      }

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v30 = +[NSNotificationCenter defaultCenter];
      [v30 postNotificationName:@"MotionDetectedNotification" object:0];
    }

    v31 = *(*(a1 + 88) + 8);
    if (*(v31 + 24) == 1)
    {
      *(v31 + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 64) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 48) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 80) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 64) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 40) + 8) + 24) = 0x10000000000000;
    }
  }

  else
  {
    v32 = [*(a1 + 32) motionManager];
    [v32 stopAccelerometerUpdates];
  }
}

id *sub_100001DA4(id *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    [a2 acceleration];
    v4 = v3;
    v6 = fabs(v5);
    v7 = [v2[4] xThreshold];
    [v7 doubleValue];
    if (v6 > fabs(v8))
    {
    }

    else
    {
      v9 = [v2[4] zThreshold];
      [v9 doubleValue];
      v11 = fabs(v10);

      if (fabs(v4) <= v11)
      {
        return [v2[4] stop];
      }
    }

    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v2[4] xThreshold];
      [v14 doubleValue];
      v16 = fabs(v15);
      v17 = [v2[4] zThreshold];
      [v17 doubleValue];
      v19 = 134219010;
      v20 = v6;
      v21 = 2048;
      v22 = fabs(v4);
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = fabs(v18);
      v27 = 2112;
      v28 = @"IncorrectOrientationNotification";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Gyroscope values { x: %f z: %f } are out of the thresholds allowed { x: %f z: %f }. Posting %@", &v19, 0x34u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"IncorrectOrientationNotification" object:0];

    return [v2[4] stop];
  }

  return result;
}

uint64_t sub_100002C54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002C6C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002D68(uint64_t a1)
{
  v2 = [DAAudioDevice alloc];
  v3 = [*(a1 + 32) inputs];
  v88 = 0;
  v4 = -[DAAudioDevice initWithSequentialAudioInput:error:](v2, "initWithSequentialAudioInput:error:", [v3 sequentialAudioInput], &v88);
  v5 = v88;
  [*(a1 + 32) setAudioDevice:v4];

  v6 = [*(a1 + 32) audioDevice];

  if (v6)
  {
    v7 = +[NSMutableArray array];
    [*(a1 + 32) setPlayResults:v7];

    v61 = +[NSMutableDictionary dictionary];
    v8 = [*(a1 + 32) inputs];
    v9 = [v8 audioFilesPerOutputComponent];
    v10 = [v9 count];

    v72 = a1;
    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = [*(a1 + 32) inputs];
        v13 = [v12 audioFilesPerOutputComponent];
        v62 = v11;
        v14 = [v13 objectAtIndexedSubscript:v11];

        if ([v14 count])
        {
          break;
        }

        v25 = v5;
LABEL_11:

        v11 = v62 + 1;
        v28 = [*(a1 + 32) inputs];
        v29 = [v28 audioFilesPerOutputComponent];
        v30 = [v29 count];

        v5 = v25;
        if (v30 <= v62 + 1)
        {
          goto LABEL_15;
        }
      }

      v15 = 0;
      v16 = v5;
      while (1)
      {
        if ([*(a1 + 32) isCancelled])
        {
          v25 = v16;
          goto LABEL_48;
        }

        v17 = [v14 objectAtIndex:v15];
        v66 = [*(a1 + 32) audioDevice];
        v70 = [*(a1 + 32) fileNameToURL];
        v68 = [v17 fileName];
        obja = [v70 objectForKeyedSubscript:v68];
        v18 = [v17 fileName];
        v19 = [v17 volume];
        v20 = [v17 channel];
        v21 = [*(v72 + 32) inputs];
        v22 = [v21 sendRawData];
        v87 = v16;
        [v66 playSignalFile:obja fileName:v18 fromOutput:v62 atVolume:v19 withChannel:v20 sendRawData:v22 error:&v87];
        v24 = v23 = v16;
        v25 = v87;

        a1 = v72;
        v26 = *(v72 + 32);
        if (!v24)
        {
          break;
        }

        v27 = [v26 playResults];
        [v27 addObject:v24];

        ++v15;
        v16 = v25;
        if ([v14 count] <= v15)
        {
          goto LABEL_11;
        }
      }

      [v26 failedToExecuteWithError:v25];

LABEL_48:
    }

    else
    {
      v25 = v5;
LABEL_15:
      if (([*(a1 + 32) isCancelled] & 1) == 0)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        obj = [*(a1 + 32) playResults];
        v58 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
        if (v58)
        {
          v31 = *v84;
          v57 = *v84;
LABEL_18:
          v32 = 0;
          while (1)
          {
            if (*v84 != v31)
            {
              v33 = v32;
              objc_enumerationMutation(obj);
              v32 = v33;
            }

            v59 = v32;
            v34 = *(*(&v83 + 1) + 8 * v32);
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v69 = v34;
            v60 = [v69 countByEnumeratingWithState:&v79 objects:v92 count:16];
            if (v60)
            {
              v67 = *v80;
LABEL_23:
              v35 = 0;
              while (1)
              {
                if (*v80 != v67)
                {
                  objc_enumerationMutation(v69);
                }

                v36 = *(*(&v79 + 1) + 8 * v35);
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v78 = 0u;
                v71 = v36;
                v37 = [v71 countByEnumeratingWithState:&v75 objects:v91 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v76;
                  v63 = v35;
                  while (2)
                  {
                    v40 = 0;
                    v41 = v25;
                    do
                    {
                      if (*v76 != v39)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v42 = *(*(&v75 + 1) + 8 * v40);
                      if ([*(a1 + 32) isCancelled])
                      {
                        v25 = v41;
                        v35 = v63;
                        goto LABEL_37;
                      }

                      v74 = v41;
                      v43 = [DAAudioCalculation calculateCrossCorrelation:v42 error:&v74];
                      v25 = v74;

                      if (!v43)
                      {
                        [*(a1 + 32) failedToExecuteWithError:v25];

                        goto LABEL_49;
                      }

                      v44 = v25;
                      v45 = [v42 outputID];
                      v46 = [v42 inputID];
                      v47 = [v42 fileName];
                      a1 = v72;
                      v56 = v45;
                      v25 = v44;
                      v48 = [NSString stringWithFormat:@"%lu, %lu, %@", v56, v46, v47];

                      [v61 setObject:v43 forKey:v48];
                      v40 = v40 + 1;
                      v41 = v44;
                    }

                    while (v38 != v40);
                    v38 = [v71 countByEnumeratingWithState:&v75 objects:v91 count:16];
                    v35 = v63;
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_37:

                if ([*(a1 + 32) isCancelled])
                {
                  break;
                }

                if (++v35 == v60)
                {
                  v60 = [v69 countByEnumeratingWithState:&v79 objects:v92 count:16];
                  if (v60)
                  {
                    goto LABEL_23;
                  }

                  break;
                }
              }
            }

            if ([*(a1 + 32) isCancelled])
            {
              break;
            }

            v32 = v59 + 1;
            v31 = v57;
            if ((v59 + 1) == v58)
            {
              v49 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
              v31 = v57;
              v58 = v49;
              if (v49)
              {
                goto LABEL_18;
              }

              break;
            }
          }
        }

        if (([*(a1 + 32) isCancelled] & 1) == 0)
        {
          v50 = [v61 allKeys];
          v51 = [v50 count];

          if (v51)
          {
            v52 = [*(a1 + 32) result];
            [v52 setStatusCode:&off_100010858];

            v89 = @"dbValues";
            v90 = v61;
            v53 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v54 = [*(a1 + 32) result];
            [v54 setData:v53];
          }

          else
          {
            v73 = v25;
            [LegacyAudioSystemController setCode:-60 forError:&v73];
            v55 = v73;

            [*(a1 + 32) failedToExecuteWithError:v55];
            v25 = v55;
          }
        }

        [*(a1 + 32) setFinished:1];
      }
    }

LABEL_49:
  }

  else
  {
    [*(a1 + 32) failedToExecuteWithError:v5];
    v25 = v5;
  }
}

uint64_t sub_10000611C(uint64_t result, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, UInt32 a4, UInt32 a5)
{
  if (result)
  {
    return AudioUnitRender(*(result + 80), a2, a3, a4, a5, *(result + 88));
  }

  return result;
}

uint64_t sub_100006130(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && *a2 == 8)
  {
    [a1 grabRecordedFrameData:a6 withNumberOfFrames:{a5, v6, v7}];
  }

  return 0;
}

uint64_t sub_100006168(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && *a2 == 8)
  {
    [a1 grabPlayBackFrameData:a6 withNumberOfFrames:{a5, v6, v7}];
  }

  return 0;
}

BOOL sub_100006B6C(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x101;

  return v3;
}

BOOL sub_100006BBC(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x33;

  return v3;
}

void sub_100006D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006D7C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 count] > 0x31)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006EAC;
    v11[3] = &unk_1000104D8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = v7;
    v14 = v9;
    v12 = v8;
    v10 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
    [*(a1 + 40) addObject:v10];

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_7:
}

void sub_100006EAC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_new();
    v7 = [v10 dk_stringFromRequiredKey:@"name" inSet:*(a1 + 32) failed:*(*(a1 + 48) + 8) + 24];
    [v6 setFileName:v7];

    v8 = [v10 dk_numberFromRequiredKey:@"volume" lowerBound:&off_100010900 upperBound:&off_100010910 failed:*(*(a1 + 48) + 8) + 24];
    [v6 setVolume:v8];

    v9 = [v10 dk_numberFromKey:@"channel" lowerBound:&off_100010888 upperBound:&off_1000108A0 defaultValue:&off_100010888 failed:*(*(a1 + 48) + 8) + 24];
    [v6 setChannel:v9];

    [*(a1 + 40) addObject:v6];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_7:
}