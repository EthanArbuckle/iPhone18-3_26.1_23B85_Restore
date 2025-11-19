@interface CLEEDMitigation
+ (const)sourceAsString:(int64_t)a3;
+ (id)newMitigationFromDict:(id)a3;
- (BOOL)anyChangeToNewRequestsComparedTo:(id)a3;
- (BOOL)needsRequestStateUpdateComparedTo:(id)a3;
- (BOOL)updateIfDifferentFrom:(id)a3;
- (BOOL)updateWorseMitigationsFrom:(id)a3;
- (CLEEDMitigation)initWithCoder:(id)a3;
- (CLEEDMitigation)initWithStreamingAllowed:(BOOL)a3 framerateFps:(int64_t)a4 bitrateKbps:(int64_t)a5 dropStreaming:(BOOL)a6 uploadAllowed:(BOOL)a7 uploadMitigation:(int64_t)a8 source:(int64_t)a9;
- (const)toCLEEDUploadMitigationString:(int64_t)a3;
- (id)description;
- (id)newMitigationDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLEEDMitigation

- (CLEEDMitigation)initWithStreamingAllowed:(BOOL)a3 framerateFps:(int64_t)a4 bitrateKbps:(int64_t)a5 dropStreaming:(BOOL)a6 uploadAllowed:(BOOL)a7 uploadMitigation:(int64_t)a8 source:(int64_t)a9
{
  v10 = a7;
  v11 = a6;
  v12 = a3;
  v62 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v12;
    if (v12)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v16 = v11;
    if (v11)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v18 = v10;
    if (v10)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    *buf = 136447746;
    v49 = "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]";
    v50 = 2082;
    v51 = v15;
    v12 = v14;
    v52 = 2050;
    v53 = a4;
    v54 = 2082;
    v55 = v17;
    v11 = v16;
    v56 = 2082;
    v57 = v19;
    v10 = v18;
    v58 = 2050;
    v59 = a8;
    v60 = 2082;
    v61 = [CLEEDMitigation sourceAsString:a9];
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s[streamingAllowed:%{public}s,fps:%{public}ld,dropStreaming:%{public}s,uploadAllowed:%{public}s,uploadMitigation:%{public}ld,source:%{public}s]", buf, 0x48u);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v21 = v12;
    if (v12)
    {
      v22 = "YES";
    }

    else
    {
      v22 = "NO";
    }

    v23 = v11;
    if (v11)
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    v25 = v10;
    if (v10)
    {
      v26 = "YES";
    }

    else
    {
      v26 = "NO";
    }

    v34 = 136447746;
    v35 = "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]";
    v36 = 2082;
    v37 = v22;
    v38 = 2050;
    v39 = a4;
    v40 = 2082;
    v41 = v24;
    v42 = 2082;
    v43 = v26;
    v44 = 2050;
    v45 = a8;
    v46 = 2082;
    v47 = [CLEEDMitigation sourceAsString:a9];
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation initWithStreamingAllowed:framerateFps:bitrateKbps:dropStreaming:uploadAllowed:uploadMitigation:source:]", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }

    LOBYTE(v11) = v23;
    LOBYTE(v10) = v25;
    LOBYTE(v12) = v21;
  }

  v33.receiver = self;
  v33.super_class = CLEEDMitigation;
  result = [(CLEEDMitigation *)&v33 init];
  if (result)
  {
    result->_newStreamingAllowed = v12;
    result->_newUploadAllowed = v10;
    result->_streamingFPS = a4;
    result->_streamingBitrate = a5;
    result->_dropStreaming = v11;
    result->_uploadMigitation = a8;
    result->_source = a9;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLEEDMitigation;
  [(CLEEDMitigation *)&v2 dealloc];
}

- (BOOL)anyChangeToNewRequestsComparedTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v13 = "[CLEEDMitigation anyChangeToNewRequestsComparedTo:]";
    v14 = 2114;
    v15 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s,other:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation anyChangeToNewRequestsComparedTo:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a3)
  {
    v8 = [(CLEEDMitigation *)self newUploadAllowed];
    if (v8 == [a3 newUploadAllowed])
    {
      v10 = [(CLEEDMitigation *)self newStreamingAllowed];
      result = v10 ^ [a3 newStreamingAllowed];
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)updateWorseMitigationsFrom:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
    v56 = 2114;
    v57 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!a3)
  {
    goto LABEL_136;
  }

  if (!-[CLEEDMitigation newStreamingAllowed](self, "newStreamingAllowed") || (v8 = -[CLEEDMitigation newStreamingAllowed](self, "newStreamingAllowed"), v8 == [a3 newStreamingAllowed]))
  {
    v15 = 0;
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      if ([(CLEEDMitigation *)self newStreamingAllowed])
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      v11 = [a3 newStreamingAllowed];
      *buf = 136446722;
      if (v11)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
      v56 = 2082;
      v57 = v10;
      v58 = 2082;
      v59 = v12;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", buf, 0x20u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDMitigation *)self newStreamingAllowed];
      [a3 newStreamingAllowed];
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    -[CLEEDMitigation setNewStreamingAllowed:](self, "setNewStreamingAllowed:", [a3 newStreamingAllowed]);
    v15 = 1;
  }

  if (![(CLEEDMitigation *)self dropStreaming])
  {
    v16 = [(CLEEDMitigation *)self dropStreaming];
    if (v16 != [a3 dropStreaming])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v17 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self dropStreaming])
        {
          v18 = "YES";
        }

        else
        {
          v18 = "NO";
        }

        if ([a3 dropStreaming])
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        *buf = 136446722;
        v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v56 = 2082;
        v57 = v18;
        v58 = 2082;
        v59 = v19;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self dropStreaming];
        [a3 dropStreaming];
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      -[CLEEDMitigation setDropStreaming:](self, "setDropStreaming:", [a3 dropStreaming]);
      v15 = 1;
    }
  }

  v22 = [a3 streamingFPS];
  if (v22 < [(CLEEDMitigation *)self streamingFPS])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v23 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CLEEDMitigation *)self streamingFPS];
      v25 = [a3 streamingFPS];
      *buf = 136446722;
      v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
      v56 = 2050;
      v57 = v24;
      v58 = 2050;
      v59 = v25;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", buf, 0x20u);
    }

    v26 = sub_19B87DD40();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDMitigation *)self streamingFPS];
      [a3 streamingFPS];
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    -[CLEEDMitigation setStreamingFPS:](self, "setStreamingFPS:", [a3 streamingFPS]);
    v15 = 1;
  }

  v28 = [a3 streamingBitrate];
  if (v28 < [(CLEEDMitigation *)self streamingBitrate])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(CLEEDMitigation *)self streamingBitrate];
      v31 = [a3 streamingBitrate];
      *buf = 136446722;
      v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
      v56 = 2050;
      v57 = v30;
      v58 = 2050;
      v59 = v31;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", buf, 0x20u);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDMitigation *)self streamingBitrate];
      [a3 streamingBitrate];
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    -[CLEEDMitigation setStreamingBitrate:](self, "setStreamingBitrate:", [a3 streamingBitrate]);
    v15 = 1;
  }

  if ([(CLEEDMitigation *)self newUploadAllowed])
  {
    v34 = [(CLEEDMitigation *)self newUploadAllowed];
    if (v34 != [a3 newUploadAllowed])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v35 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self newUploadAllowed])
        {
          v36 = "YES";
        }

        else
        {
          v36 = "NO";
        }

        v37 = [a3 newUploadAllowed];
        *buf = 136446722;
        if (v37)
        {
          v38 = "YES";
        }

        else
        {
          v38 = "NO";
        }

        v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v56 = 2082;
        v57 = v36;
        v58 = 2082;
        v59 = v38;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v39 = sub_19B87DD40();
      if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self newUploadAllowed];
        [a3 newUploadAllowed];
        v40 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      -[CLEEDMitigation setNewUploadAllowed:](self, "setNewUploadAllowed:", [a3 newUploadAllowed]);
      v15 = 1;
    }
  }

  if ([(CLEEDMitigation *)self uploadMigitation]== 2)
  {
    goto LABEL_134;
  }

  v41 = [(CLEEDMitigation *)self uploadMigitation];
  if (v41 == [a3 uploadMigitation])
  {
    goto LABEL_134;
  }

  v42 = [(CLEEDMitigation *)self uploadMigitation];
  if (v42 == 1)
  {
    if ([a3 uploadMigitation] == 2)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v47 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
        v49 = [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
        *buf = 136446722;
        v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
        v56 = 2082;
        v57 = v48;
        v58 = 2082;
        v59 = v49;
        _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
      }

      v50 = sub_19B87DD40();
      if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
      {
        goto LABEL_133;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 == -1)
      {
        goto LABEL_131;
      }

      goto LABEL_138;
    }

    goto LABEL_134;
  }

  if (v42 || ([a3 uploadMigitation] - 1) > 1)
  {
LABEL_134:
    if (v15)
    {
      goto LABEL_135;
    }

LABEL_136:
    result = 0;
    goto LABEL_137;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v43 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
    v45 = [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
    *buf = 136446722;
    v55 = "[CLEEDMitigation updateWorseMitigationsFrom:]";
    v56 = 2082;
    v57 = v44;
    v58 = 2082;
    v59 = v45;
    _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
  }

  v46 = sub_19B87DD40();
  if (*(v46 + 160) <= 1 && *(v46 + 164) <= 1 && *(v46 + 168) <= 1 && !*(v46 + 152))
  {
    goto LABEL_133;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46E0 != -1)
  {
LABEL_138:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

LABEL_131:
  [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
  [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
  v51 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateWorseMitigationsFrom:]", "CoreLocation: %s\n", v51);
  if (v51 != buf)
  {
    free(v51);
  }

LABEL_133:
  -[CLEEDMitigation setUploadMigitation:](self, "setUploadMigitation:", [a3 uploadMigitation]);
LABEL_135:
  -[CLEEDMitigation setSource:](self, "setSource:", [a3 source]);
  result = 1;
LABEL_137:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)updateIfDifferentFrom:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
    v52 = 2114;
    v53 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a3)
  {
    v8 = [(CLEEDMitigation *)self newStreamingAllowed];
    v9 = v8 ^ [a3 newStreamingAllowed];
    if (v9 == 1)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v10 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self newStreamingAllowed])
        {
          v11 = "YES";
        }

        else
        {
          v11 = "NO";
        }

        v12 = [a3 newStreamingAllowed];
        *buf = 136446722;
        if (v12)
        {
          v13 = "YES";
        }

        else
        {
          v13 = "NO";
        }

        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2082;
        v53 = v11;
        v54 = 2082;
        v55 = v13;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newStreamingAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self newStreamingAllowed];
        [a3 newStreamingAllowed];
        v15 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      -[CLEEDMitigation setNewStreamingAllowed:](self, "setNewStreamingAllowed:", [a3 newStreamingAllowed]);
    }

    v16 = [(CLEEDMitigation *)self dropStreaming];
    if (v16 != [a3 dropStreaming])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v17 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self dropStreaming])
        {
          v18 = "YES";
        }

        else
        {
          v18 = "NO";
        }

        v19 = [a3 dropStreaming];
        *buf = 136446722;
        if (v19)
        {
          v20 = "YES";
        }

        else
        {
          v20 = "NO";
        }

        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2082;
        v53 = v18;
        v54 = 2082;
        v55 = v20;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
      }

      v21 = sub_19B87DD40();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self dropStreaming];
        [a3 dropStreaming];
        v22 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      -[CLEEDMitigation setDropStreaming:](self, "setDropStreaming:", [a3 dropStreaming]);
      LOBYTE(v9) = 1;
    }

    v23 = [a3 streamingFPS];
    if (v23 != [(CLEEDMitigation *)self streamingFPS])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v24 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CLEEDMitigation *)self streamingFPS];
        v26 = [a3 streamingFPS];
        *buf = 136446722;
        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2050;
        v53 = v25;
        v54 = 2050;
        v55 = v26;
        _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingFPS[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self streamingFPS];
        [a3 streamingFPS];
        v28 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      -[CLEEDMitigation setStreamingFPS:](self, "setStreamingFPS:", [a3 streamingFPS]);
      LOBYTE(v9) = 1;
    }

    v29 = [a3 streamingBitrate];
    if (v29 != [(CLEEDMitigation *)self streamingBitrate])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v30 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(CLEEDMitigation *)self streamingBitrate];
        v32 = [a3 streamingBitrate];
        *buf = 136446722;
        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2050;
        v53 = v31;
        v54 = 2050;
        v55 = v32;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, streamingBitrate[%{public}ld->%{public}ld]", buf, 0x20u);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self streamingBitrate];
        [a3 streamingBitrate];
        v34 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      -[CLEEDMitigation setStreamingBitrate:](self, "setStreamingBitrate:", [a3 streamingBitrate]);
      LOBYTE(v9) = 1;
    }

    v35 = [(CLEEDMitigation *)self newUploadAllowed];
    if (v35 != [a3 newUploadAllowed])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v36 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self newUploadAllowed])
        {
          v37 = "YES";
        }

        else
        {
          v37 = "NO";
        }

        v38 = [a3 newUploadAllowed];
        *buf = 136446722;
        if (v38)
        {
          v39 = "YES";
        }

        else
        {
          v39 = "NO";
        }

        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2082;
        v53 = v37;
        v54 = 2082;
        v55 = v39;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, newUploadAllowed[%{public}s->%{public}s]", buf, 0x20u);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self newUploadAllowed];
        [a3 newUploadAllowed];
        v41 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      -[CLEEDMitigation setNewUploadAllowed:](self, "setNewUploadAllowed:", [a3 newUploadAllowed]);
      LOBYTE(v9) = 1;
    }

    v42 = [(CLEEDMitigation *)self uploadMigitation];
    if (v42 != [a3 uploadMigitation])
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v43 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
        v45 = [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
        *buf = 136446722;
        v51 = "[CLEEDMitigation updateIfDifferentFrom:]";
        v52 = 2082;
        v53 = v44;
        v54 = 2082;
        v55 = v45;
        _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
      }

      v46 = sub_19B87DD40();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
        [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
        v47 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation updateIfDifferentFrom:]", "CoreLocation: %s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }
      }

      -[CLEEDMitigation setUploadMigitation:](self, "setUploadMigitation:", [a3 uploadMigitation]);
      LOBYTE(v9) = 1;
    }

    -[CLEEDMitigation setSource:](self, "setSource:", [a3 source]);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)needsRequestStateUpdateComparedTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v25 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
    v26 = 2114;
    v27 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2CXFW,%{public}s, incomingMitigation:%{public}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a3)
  {
    v8 = [(CLEEDMitigation *)self dropStreaming];
    if (v8 == [a3 dropStreaming] || !objc_msgSend(a3, "dropStreaming"))
    {
      v15 = 0;
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v9 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        if ([(CLEEDMitigation *)self dropStreaming])
        {
          v10 = "YES";
        }

        else
        {
          v10 = "NO";
        }

        v11 = [a3 dropStreaming];
        *buf = 136446722;
        if (v11)
        {
          v12 = "YES";
        }

        else
        {
          v12 = "NO";
        }

        v25 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
        v26 = 2082;
        v27 = v10;
        v28 = 2082;
        v29 = v12;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, dropStreaming[%{public}s->%{public}s]", buf, 0x20u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self dropStreaming];
        [a3 dropStreaming];
        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      v15 = 1;
    }

    v16 = [(CLEEDMitigation *)self uploadMigitation];
    if (v16 != [a3 uploadMigitation] && objc_msgSend(a3, "uploadMigitation") == 1)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v17 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
        v19 = [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
        *buf = 136446722;
        v25 = "[CLEEDMitigation needsRequestStateUpdateComparedTo:]";
        v26 = 2082;
        v27 = v18;
        v28 = 2082;
        v29 = v19;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2CXFW,%{public}s, uploadMitigation[%{public}s->%{public}s]", buf, 0x20u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDMitigation *)self toCLEEDUploadMitigationString:[(CLEEDMitigation *)self uploadMigitation]];
        [a3 toCLEEDUploadMitigationString:{objc_msgSend(a3, "uploadMigitation")}];
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDMitigation needsRequestStateUpdateComparedTo:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (const)toCLEEDUploadMitigationString:(int64_t)a3
{
  v3 = "None";
  if (a3 == 1)
  {
    v3 = "Delay";
  }

  if (a3 == 2)
  {
    return "Drop";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(CLEEDMitigation *)self newStreamingAllowed])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = [(CLEEDMitigation *)self streamingFPS];
  v6 = [(CLEEDMitigation *)self streamingBitrate];
  if ([(CLEEDMitigation *)self dropStreaming])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if ([(CLEEDMitigation *)self newUploadAllowed])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  return [v3 stringWithFormat:@"[streamingAllowed:%s, fps:%ld, Kbps:%ld, dropStreaming:%s, uploadAllowed:%s, uploadMitigation:%s, source:%s]", v4, v5, v6, v7, v8, -[CLEEDMitigation toCLEEDUploadMitigationString:](self, "toCLEEDUploadMitigationString:", -[CLEEDMitigation uploadMigitation](self, "uploadMigitation")), +[CLEEDMitigation sourceAsString:](CLEEDMitigation, "sourceAsString:", -[CLEEDMitigation source](self, "source"))];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->_newStreamingAllowed forKey:@"newStreamingAllowed"];
  [a3 encodeInteger:self->_streamingFPS forKey:@"streamingFPS"];
  [a3 encodeInteger:self->_streamingBitrate forKey:@"bitrateBPS"];
  [a3 encodeBool:self->_dropStreaming forKey:@"dropStreaming"];
  [a3 encodeBool:self->_newUploadAllowed forKey:@"newUploadAllowed"];
  [a3 encodeInteger:self->_uploadMigitation forKey:@"uploadMigitation"];
  source = self->_source;

  [a3 encodeInteger:source forKey:@"MitigationSource"];
}

- (CLEEDMitigation)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLEEDMitigation;
  v4 = [(CLEEDMitigation *)&v6 init];
  if (v4)
  {
    v4->_newStreamingAllowed = [a3 decodeBoolForKey:@"newStreamingAllowed"];
    v4->_dropStreaming = [a3 decodeBoolForKey:@"dropStreaming"];
    v4->_streamingFPS = [a3 decodeIntegerForKey:@"streamingFPS"];
    v4->_streamingBitrate = [a3 decodeIntegerForKey:@"bitrateBPS"];
    v4->_newUploadAllowed = [a3 decodeBoolForKey:@"newUploadAllowed"];
    v4->_uploadMigitation = [a3 decodeIntegerForKey:@"uploadMigitation"];
    v4->_source = [a3 decodeIntegerForKey:@"MitigationSource"];
  }

  return v4;
}

- (id)newMitigationDict
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDMitigation newStreamingAllowed](self, "newStreamingAllowed")), @"newStreamingAllowed"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDMitigation dropStreaming](self, "dropStreaming")), @"dropStreaming"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMitigation streamingFPS](self, "streamingFPS")), @"streamingFPS"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMitigation streamingBitrate](self, "streamingBitrate")), @"bitrateBPS"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDMitigation newUploadAllowed](self, "newUploadAllowed")), @"newUploadAllowed"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMitigation uploadMigitation](self, "uploadMigitation")), @"uploadMigitation"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDMitigation source](self, "source")), @"MitigationSource"}];
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[CLEEDMitigation newMitigationDict]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2CXFW,%{public}s,nil mediaItemDict, early return", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDMitigation newMitigationDict]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)newMitigationFromDict:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(CLEEDMitigation);
  if (v4)
  {
    -[CLEEDMitigation setSource:](v4, "setSource:", [objc_msgSend(a3 valueForKey:{@"MitigationSource", "intValue"}]);
    -[CLEEDMitigation setUploadMigitation:](v4, "setUploadMigitation:", [objc_msgSend(a3 valueForKey:{@"uploadMigitation", "intValue"}]);
    -[CLEEDMitigation setStreamingFPS:](v4, "setStreamingFPS:", [objc_msgSend(a3 valueForKey:{@"streamingFPS", "integerValue"}]);
    -[CLEEDMitigation setStreamingBitrate:](v4, "setStreamingBitrate:", [objc_msgSend(a3 valueForKey:{@"bitrateBPS", "integerValue"}]);
    -[CLEEDMitigation setNewUploadAllowed:](v4, "setNewUploadAllowed:", [objc_msgSend(a3 valueForKey:{@"newUploadAllowed", "BOOLValue"}]);
    -[CLEEDMitigation setNewStreamingAllowed:](v4, "setNewStreamingAllowed:", [objc_msgSend(a3 valueForKey:{@"newStreamingAllowed", "BOOLValue"}]);
    -[CLEEDMitigation setDropStreaming:](v4, "setDropStreaming:", [objc_msgSend(a3 valueForKey:{@"dropStreaming", "BOOLValue"}]);
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v11 = "+[CLEEDMitigation newMitigationFromDict:]";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "#EED2CXFW,%{public}s,nil mitigation, early return", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDMitigation newMitigationFromDict:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (const)sourceAsString:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return "NotSet";
  }

  else
  {
    return off_1E753D570[a3 - 1];
  }
}

@end