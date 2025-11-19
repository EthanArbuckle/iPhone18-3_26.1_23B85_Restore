BOOL sub_100001C60(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x101;

  return v3;
}

BOOL sub_100001CB0(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x33;

  return v3;
}

void sub_100001EF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  v5 = a2;
  v7 = [v3 dk_numberFromRequiredKey:v5 lowerBound:&off_100015380 upperBound:&off_100015398 failed:v4 + 24];
  v6 = [*(a1 + 40) inputValueToName];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void sub_100001F94(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002094;
  v10[3] = &unk_100014460;
  v11 = objc_alloc_init(OutputSpecification);
  v12 = v5;
  v13 = *(a1 + 40);
  v7 = v5;
  v8 = v11;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  v9 = [*(a1 + 32) outputSpecifications];
  [v9 setObject:v8 forKeyedSubscript:v6];
}

void sub_100002094(uint64_t a1)
{
  v2 = [*(a1 + 40) dk_numberFromRequiredKey:@"mode" lowerBound:&off_100015380 upperBound:&off_1000153B0 failed:*(*(a1 + 48) + 8) + 24];
  [*(a1 + 32) setMode:v2];

  v3 = [*(a1 + 40) dk_numberFromRequiredKey:@"channel" lowerBound:&off_100015380 upperBound:&off_1000153B0 failed:*(*(a1 + 48) + 8) + 24];
  [*(a1 + 32) setChannel:v3];
}

id *sub_10000261C(id *result, void *a2)
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

void sub_100002BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
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

void sub_100002C14(uint64_t a1, void *a2, void *a3)
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

id archiveFiles(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[DSMutableArchive archive];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * v13);
        v24 = v14;
        v16 = [v8 addURL:v15 error:&v24];
        v7 = v24;

        if ((v16 & 1) == 0)
        {
          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000092F0(v7, v21);
          }

          v20 = v9;
          goto LABEL_15;
        }

        v13 = v13 + 1;
        v14 = v7;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;

  v18 = DKTemporaryDirectoryURL();
  v23 = v7;
  v19 = [v8 archiveAsTempFileWithTemplate:v6 directory:v18 suffix:@".tar.gz" error:&v23];
  v7 = v23;

  if (!v19)
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100009368(v7, v20);
    }

LABEL_15:

    v19 = 0;
  }

  return v19;
}

void sub_100004820(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setAudioSystemResults:v2];

  dsema = dispatch_semaphore_create(0);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v3 = [*(a1 + 32) inputs];
  v4 = [v3 sequences];

  v5 = [v4 countByEnumeratingWithState:&v81 objects:v97 count:16];
  if (v5)
  {
    v6 = v5;
    v70 = 0;
    v7 = *v82;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v82 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v81 + 1) + 8 * i);
        if ([*(a1 + 32) testFailed])
        {
          dispatch_semaphore_signal(dsema);
        }

        else
        {
          v10 = [v9 outputs];
          v11 = [v10 count];

          if (v11 == 1)
          {
            [*(a1 + 32) testSequence:v9 completionSemaphore:dsema];
          }

          else
          {
            v95 = NSLocalizedDescriptionKey;
            v96 = @"Sequence has more than 1 output.";
            v12 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v13 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-64 userInfo:v12];

            [*(a1 + 32) failedToExecuteWithError:v13];
            dispatch_semaphore_signal(dsema);
            v70 = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v81 objects:v97 count:16];
    }

    while (v6);
  }

  else
  {
    v70 = 0;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Waiting for sequences to complete...", buf, 2u);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v15 = [*(a1 + 32) inputs];
  v16 = [v15 sequences];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (!v17)
  {
LABEL_28:

    v27 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "All sequences complete", buf, 2u);
    }

    if (*(a1 + 40) == 1)
    {
      v28 = [*(a1 + 32) rawRecordings];
      v29 = [@"RecordedAudio" stringByAppendingString:@"XXXXXX"];
      v30 = v70;
      obj = archiveFiles(v28, v29, v70);

      v31 = DiagnosticLogHandleForCategory();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v70)
      {
        if (v32)
        {
          *buf = 138412290;
          v93 = v70;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ERROR archiving recording data: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v32)
        {
          *buf = 138412290;
          v93 = obj;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Successfully archived raw audio to [%@]", buf, 0xCu);
        }

        v31 = objc_alloc_init(NSFileManager);
        v35 = [*(a1 + 32) tmpdir];
        v36 = [@"RecordedAudio" stringByAppendingString:@".tar.gz"];
        v37 = [v35 URLByAppendingPathComponent:v36];

        v76 = 0;
        v38 = [v31 moveItemAtURL:obj toURL:v37 error:&v76];
        v30 = v76;
        v39 = DiagnosticLogHandleForCategory();
        v40 = v39;
        if (v38)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v93 = v37;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Successfully renamed raw audio archive to [%@]", buf, 0xCu);
          }

          v40 = obj;
          obj = v37;
        }

        else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000093E0();
        }
      }
    }

    else
    {
      obj = 0;
      v30 = v70;
    }

    if ([*(a1 + 32) isCancelled])
    {
      goto LABEL_78;
    }

    if (([*(a1 + 32) testFailed] & 1) == 0)
    {
      v41 = [*(a1 + 32) result];
      [v41 setStatusCode:&off_1000153C8];
    }

    v88 = @"dbResults";
    v42 = [*(a1 + 32) audioSystemResults];
    v89 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v44 = [*(a1 + 32) result];
    [v44 setData:v43];

    if (*(a1 + 40) != 1)
    {
      goto LABEL_78;
    }

    v45 = v30;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = [*(a1 + 32) inputs];
    v47 = [v46 sequences];

    v48 = [v47 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v73;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = [*(*(&v72 + 1) + 8 * j) completedResultCount];
          v50 += [v53 intValue];
        }

        v49 = [v47 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
    }

    if (obj && ([*(a1 + 32) rawRecordings], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "count"), v54, v55 == v50))
    {
      v56 = [*(a1 + 32) writeCurrentResultsToJson];
      v57 = v56;
      v30 = v45;
      if (v56)
      {
        v86[0] = obj;
        v86[1] = v56;
        v58 = [NSArray arrayWithObjects:v86 count:2];
        v59 = [*(a1 + 32) archiveNameTemplate];
        v60 = archiveFiles(v58, v59, v30);

        v61 = DiagnosticLogHandleForCategory();
        v62 = v61;
        if (v30)
        {
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_100009448();
          }
        }

        else
        {
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v93 = v60;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Successfully created combined results archive at [%@]", buf, 0xCu);
          }

          v85 = v60;
          v62 = [NSArray arrayWithObjects:&v85 count:1];
          v67 = [*(a1 + 32) result];
          [v67 setFiles:v62];
        }
      }

      else
      {
        v63 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Unable to include test results in archive. Prioritizing Kets over recorded audio", buf, 2u);
        }

        v64 = [*(a1 + 32) result];
        v65 = [v64 statusCode];
        v66 = [v65 isEqualToNumber:&off_1000153C8];

        if (!v66)
        {
          goto LABEL_77;
        }

        v60 = [*(a1 + 32) result];
        [v60 setStatusCode:&off_1000153E0];
      }
    }

    else
    {
      v57 = [*(a1 + 32) result];
      [v57 setStatusCode:&off_1000153E0];
      v30 = v45;
    }

LABEL_77:

LABEL_78:
    [*(a1 + 32) testFinishedSuccessfully];
    goto LABEL_79;
  }

  v19 = v17;
  v20 = *v78;
  *&v18 = 136315138;
  v68 = v18;
  while (1)
  {
    if (*v78 != v20)
    {
      objc_enumerationMutation(obj);
    }

    v21 = [*(a1 + 32) inputs];
    v22 = [v21 sequenceTimeout];
    v23 = dispatch_time(0, 1000000000 * [v22 unsignedLongValue]);
    v24 = dispatch_semaphore_wait(dsema, v23);

    v25 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "timed out";
      if (!v24)
      {
        v26 = "finished";
      }

      *buf = v68;
      v93 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sequence has %s while waiting for completion.", buf, 0xCu);
    }

    if (v24)
    {
      break;
    }

    if (!--v19)
    {
      v19 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
      if (!v19)
      {
        goto LABEL_28;
      }
    }
  }

  v33 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Timed out while waiting on sequence completion semaphore. Ending test.", buf, 2u);
  }

  v90 = NSLocalizedDescriptionKey;
  v91 = @"Timed out waiting for sequences to finish running.";
  v34 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v30 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-71 userInfo:v34];

  [*(a1 + 32) failedToExecuteWithError:v30];
  [*(a1 + 32) setFinished:1];
LABEL_79:
}

void sub_1000055F8(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "This is the first time failedToExecuteWithError was called. Using this error for the failing status code", v7, 2u);
  }

  v3 = [*(a1 + 32) result];
  [v3 setData:&__NSDictionary0__struct];

  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) code]);
  v5 = [*(a1 + 32) result];
  [v5 setStatusCode:v4];

  [*(a1 + 32) setTestFailed:1];
  v6 = [*(a1 + 32) audioTest];
  [v6 cancel];
}

uint64_t sub_100006354(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000636C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100006818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) testFailed])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v42 = v8;
      v9 = "Test appears to have already failed. Not proceeding with completion block for sequence {%@}";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    if ([v5 count])
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = *(a1 + 32);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = [*(a1 + 72) index];
      [v11 parseTestResults:v5 fromOutput:v12 withFile:v13 parsedResults:v10 sequenceIndex:v14 error:v6];

      v15 = [*(a1 + 32) audioSystemResults];
      [v15 addObject:v10];

      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      [*(a1 + 72) setCompletedResultCount:v16];

      goto LABEL_7;
    }

LABEL_27:
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100009684(a1, v24, v25, v26, v27, v28, v29, v30);
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"Sequence completed with no results";
    v31 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v32 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-72 userInfo:v31];

    [*(a1 + 32) failedToExecuteWithError:v32];
    dispatch_semaphore_signal(*(a1 + 48));

    goto LABEL_11;
  }

  v18 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000095B4();
  }

  if (v6)
  {
    if ([v6 code] == -2 || objc_msgSend(v6, "code") == -3)
    {
      v39 = NSLocalizedDescriptionKey;
      v19 = [v6 localizedDescription];
      v40 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v21 = -56;
    }

    else
    {
      v37 = NSLocalizedDescriptionKey;
      v19 = [v6 localizedDescription];
      v38 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v21 = -67;
    }

    v22 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:v21 userInfo:v20];
  }

  else
  {
    v35 = NSLocalizedDescriptionKey;
    v36 = @"Sequence completed with nil result";
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-72 userInfo:v19];
  }

  if (!v22)
  {
    if ([0 count])
    {
      [*(a1 + 72) setCompletedResultCount:&off_1000153F8];
LABEL_7:
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 138412290;
        v42 = v17;
        v9 = "Completion finished for test sequence %@";
        goto LABEL_9;
      }

LABEL_10:

      dispatch_semaphore_signal(*(a1 + 48));
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v23 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10000961C();
  }

  [*(a1 + 32) failedToExecuteWithError:v22];
  dispatch_semaphore_signal(*(a1 + 48));

LABEL_11:
}

void sub_1000084B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000084F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_100008E60(uint64_t a1)
{
  v2 = [*(a1 + 32) exclavesStatus];

  if (!v2)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Capturing exclaves status", v5, 2u);
    }

    v4 = [DAExclavesSupport exclavesStatusForSensors:1];
    [*(a1 + 32) setExclavesStatus:v4];
  }
}

void sub_1000092F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR finding log(s): %@", &v2, 0xCu);
}

void sub_100009368(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR archiving logs: %@", &v2, 0xCu);
}

void sub_1000094B0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000084D4();
  sub_1000084E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000953C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Error clearing temporary files: %@", a1, 0xCu);
}

void sub_1000096F4(void *a1)
{
  [a1 inputID];
  sub_1000084D4();
  sub_1000084E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100009774(uint64_t a1, void *a2)
{
  v7 = [a2 outputDevice];
  sub_1000084E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}