@interface AMSCommandLineDialogTask
- (AMSCommandLineDialogTask)initWithRequest:(id)a3;
- (id)_createHorizontolLineWithWidth:(int64_t)a3;
- (id)_createLinesFromText:(id)a3 width:(int64_t)a4;
- (id)_createText:(id)a3 width:(int64_t)a4 centered:(BOOL)a5 omitLeftPipe:(BOOL)a6;
- (id)_createTextfieldWithTextfield:(id)a3 width:(int64_t)a4;
- (id)_gatherTextfieldInput;
- (id)_getUserInput;
- (id)present;
- (int64_t)_gatherButtonInput;
- (void)_printMessage:(id)a3;
@end

@implementation AMSCommandLineDialogTask

- (AMSCommandLineDialogTask)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSCommandLineDialogTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_automaticButtonSelection = -1;
    v6->_dialogPadding = 2.0;
    v6->_maximumDialogWidth = 70.0;
    v6->_minimumDialogWidth = 40.0;
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (id)present
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AMSCommandLineDialogTask_present__block_invoke;
  v5[3] = &unk_1E73B5F18;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

AMSDialogResult *__35__AMSCommandLineDialogTask_present__block_invoke(uint64_t a1)
{
  v165 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained request];
    v6 = [v5 logKey];
    v7 = [WeakRetained request];
    *buf = 138543874;
    v160 = v4;
    v161 = 2114;
    v162 = v6;
    v163 = 2114;
    v164 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting command line alert using request: %{public}@", buf, 0x20u);
  }

  v8 = [WeakRetained request];
  v9 = [v8 buttonActions];
  v10 = [v9 count];

  [WeakRetained dialogPadding];
  v12 = (v11 * 2.0 + 2.0);
  v13 = [WeakRetained request];
  v14 = [v13 title];
  v15 = [v14 length] + v12;

  [WeakRetained minimumDialogWidth];
  if (v16 >= v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  [WeakRetained maximumDialogWidth];
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = [WeakRetained request];
  v21 = [v20 title];
  v22 = [v21 length] + v12;

  [WeakRetained minimumDialogWidth];
  if (v23 >= v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  [WeakRetained maximumDialogWidth];
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [WeakRetained minimumDialogWidth];
  v28 = v27;
  v136 = v10;
  if (v10 == 2)
  {
    v28 = v27 * 0.5;
    [WeakRetained maximumDialogWidth];
    v30 = v29 * 0.5;
  }

  else
  {
    [WeakRetained maximumDialogWidth];
    v30 = v31;
  }

  v135 = WeakRetained;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v32 = [WeakRetained request];
  v33 = [v32 buttonActions];

  v34 = [v33 countByEnumeratingWithState:&v151 objects:v158 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = *v152;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v152 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v39 = [*(*(&v151 + 1) + 8 * i) title];
        v40 = [v39 length] + v12;

        if (v40 <= v28)
        {
          v41 = v28;
        }

        else
        {
          v41 = v40;
        }

        if (v41 >= v30)
        {
          v41 = v30;
        }

        v42 = v41 - v12;
        if (v36 <= v42)
        {
          v36 = v42;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v151 objects:v158 count:16];
    }

    while (v35);
  }

  else
  {
    v36 = 0;
  }

  v43 = v19;
  if (v26 > v19)
  {
    v43 = v26;
  }

  v44 = v36 + v12;
  if (v10 == 2)
  {
    v44 = 2 * (v36 + v12) - 1;
  }

  if (v43 <= v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = v43;
  }

  v46 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v47 = [v135 _createHorizontolLineWithWidth:v45];
  [v46 appendString:v47];

  v48 = [v135 request];
  v49 = [v48 title];
  v50 = [v49 length];
  v51 = v50 != 0;

  if (v50)
  {
    v52 = [v135 request];
    v53 = [v52 title];
    v54 = [v135 _createText:v53 width:v45 centered:1 omitLeftPipe:0];
    [v46 appendString:v54];
  }

  v55 = [v135 request];
  v56 = [v55 message];
  v57 = [v56 length];

  if (v57)
  {
    if (v50)
    {
      v58 = [v135 _createText:@" " width:v45 centered:0 omitLeftPipe:0];
      [v46 appendString:v58];
    }

    v59 = [v135 request];
    v60 = [v59 message];
    v61 = [v135 _createText:v60 width:v45 centered:0 omitLeftPipe:0];
    [v46 appendString:v61];

    v51 = 1;
  }

  v62 = [v135 request];
  v63 = [v62 textFields];
  v64 = [v63 count];

  if (v64)
  {
    if (v51)
    {
      v65 = [v135 _createText:@" " width:v45 centered:0 omitLeftPipe:0];
      [v46 appendString:v65];
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v66 = [v135 request];
    v67 = [v66 textFields];

    v68 = [v67 countByEnumeratingWithState:&v147 objects:v157 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v148;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v148 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [v135 _createTextfieldWithTextfield:*(*(&v147 + 1) + 8 * j) width:v45];
          [v46 appendString:v72];
        }

        v69 = [v67 countByEnumeratingWithState:&v147 objects:v157 count:16];
      }

      while (v69);
    }
  }

  v73 = [v135 _createHorizontolLineWithWidth:v45];
  v134 = v46;
  [v46 appendString:v73];

  v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v74 = [v135 request];
  v75 = [v74 buttonActions];

  v76 = [v75 countByEnumeratingWithState:&v143 objects:v156 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v144;
    v79 = 1;
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v144 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v81 = MEMORY[0x1E696AEC0];
        v82 = [*(*(&v143 + 1) + 8 * k) title];
        v83 = [v81 stringWithFormat:@"(%ld) %@", v79, v82];
        [v138 addObject:v83];

        ++v79;
      }

      v77 = [v75 countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v77);
  }

  if (v136 == 2)
  {
    v84 = vcvtd_n_f64_s64(v45, 1uLL);
    v85 = vcvtpd_s64_f64(v84);
    v86 = vcvtmd_s64_f64(v84);
    v87 = [v138 objectAtIndexedSubscript:0];
    v88 = [v138 objectAtIndexedSubscript:1];
    v133 = v85;
    v89 = [v135 _createLinesFromText:v87 width:v85];
    v130 = v88;
    v132 = v86;
    v90 = [v135 _createLinesFromText:v88 width:v86];
    v137 = v89;
    v91 = [v89 count];
    v92 = v90;
    v93 = [v90 count];
    if (v91 <= v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = v91;
    }

    v131 = v94;
    if (v94 >= 1)
    {
      v95 = 0;
      v96 = @" ";
      do
      {
        v97 = v96;
        if (v95 < [v137 count])
        {
          v97 = [v137 objectAtIndexedSubscript:v95];
        }

        v98 = v96;
        if (v95 < [v92 count])
        {
          v96 = [v92 objectAtIndexedSubscript:v95];
        }

        v99 = [v135 _createText:v97 width:v133 centered:1 omitLeftPipe:0];
        v100 = [v135 _createText:v96 width:v132 centered:1 omitLeftPipe:1];
        [v99 substringToIndex:{objc_msgSend(v99, "length") - 1}];
        v102 = v101 = v97;

        [v134 appendFormat:@"%@%@", v102, v100];
        ++v95;
        v96 = v98;
      }

      while (v131 != v95);
    }

    v103 = v135;
    v104 = [v135 _createHorizontolLineWithWidth:v45];
    v105 = v134;
    [v134 appendString:v104];
  }

  else
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v87 = v138;
    v106 = [v87 countByEnumeratingWithState:&v139 objects:v155 count:16];
    v103 = v135;
    if (v106)
    {
      v107 = v106;
      v108 = *v140;
      v105 = v134;
      do
      {
        for (m = 0; m != v107; ++m)
        {
          if (*v140 != v108)
          {
            objc_enumerationMutation(v87);
          }

          v110 = [v135 _createText:*(*(&v139 + 1) + 8 * m) width:v45 centered:1 omitLeftPipe:0];
          [v134 appendString:v110];

          v111 = [v135 _createHorizontolLineWithWidth:v45];
          [v134 appendString:v111];
        }

        v107 = [v87 countByEnumeratingWithState:&v139 objects:v155 count:16];
      }

      while (v107);
    }

    else
    {
      v105 = v134;
    }
  }

  [v103 _printMessage:@"\n"];
  [v103 _printMessage:v105];
  [v103 _printMessage:@"\n"];
  v112 = [v103 _gatherTextfieldInput];
  if (![v112 count] || objc_msgSend(v103, "automaticButtonSelection") < 0 || (v113 = objc_msgSend(v103, "automaticButtonSelection"), objc_msgSend(v103, "request"), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v114, "buttonActions"), v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v115, "count"), v115, v114, v113 >= v116) || (v117 = objc_msgSend(v103, "automaticButtonSelection"), v117 == -1))
  {
    v117 = [v103 _gatherButtonInput];
  }

  v118 = @"AMSDialogResultDismissIdentifier";
  if ((v117 & 0x8000000000000000) == 0)
  {
    v119 = [v103 request];
    v120 = [v119 buttonActions];
    v121 = [v120 count];

    if (v117 < v121)
    {
      v122 = [v103 request];
      v123 = [v122 buttonActions];
      v124 = [v123 objectAtIndexedSubscript:v117];

      v125 = [v124 identifier];

      v118 = v125;
    }
  }

  v126 = [AMSDialogResult alloc];
  v127 = [v103 request];
  v128 = [(AMSDialogResult *)v126 initWithOriginalRequest:v127 selectedActionIdentifier:v118];

  [(AMSDialogResult *)v128 setTextfieldValues:v112];

  return v128;
}

- (id)_createHorizontolLineWithWidth:(int64_t)a3
{
  v3 = [&stru_1F071BA78 stringByPaddingToLength:a3 - 2 withString:@"-" startingAtIndex:0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ \n", v3];

  return v4;
}

- (id)_createLinesFromText:(id)a3 width:(int64_t)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v4;
  obj = [v4 componentsSeparatedByString:@" "];
  v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v33 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v38 + 1) + 8 * i) componentsSeparatedByString:@"\n"];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v35;
          v13 = 1;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v34 + 1) + 8 * j);
              if ((v13 & 1) == 0)
              {
                [v5 addObject:@"\n"];
              }

              [v5 addObject:v15];
              v13 = 0;
            }

            v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
            v13 = 0;
          }

          while (v11);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(AMSCommandLineDialogTask *)self dialogPadding];
  v18 = v17;
  v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v5 count])
  {
    v20 = 0;
    v21 = a4 - (v18 * 2.0 + 2.0);
    while (1)
    {
      v22 = [v5 objectAtIndexedSubscript:v20];
      v23 = [v22 isEqualToString:@"\n"];
      v24 = [v19 length];
      v25 = [v22 length];
      if (v23)
      {
        break;
      }

      if (v24 + v25 + 1 <= v21)
      {
        if ([v19 length])
        {
          [v19 appendString:@" "];
        }

        [v19 appendString:v22];
        goto LABEL_29;
      }

      [v16 addObject:v19];
      if ([v22 length] > v21)
      {
        v26 = [v22 substringToIndex:v21 - 1];
        goto LABEL_21;
      }

LABEL_22:
      v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", v22];

      v19 = v27;
LABEL_29:

      if (++v20 >= [v5 count])
      {
        goto LABEL_30;
      }
    }

    [v16 addObject:v19];
    v26 = &stru_1F071BA78;
LABEL_21:

    v22 = v26;
    goto LABEL_22;
  }

LABEL_30:
  if ([v19 length] || !objc_msgSend(v16, "count"))
  {
    [v16 addObject:v19];
  }

  return v16;
}

- (id)_createText:(id)a3 width:(int64_t)a4 centered:(BOOL)a5 omitLeftPipe:(BOOL)a6
{
  v6 = a6;
  v34 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  [(AMSCommandLineDialogTask *)self dialogPadding];
  v11 = v10;
  v35 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v33 = self;
  [(AMSCommandLineDialogTask *)self _createLinesFromText:v9 width:a4];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = @"|";
    if (v6)
    {
      v15 = &stru_1F071BA78;
    }

    else
    {
      v15 = @"|";
    }

    v31 = v15;
    v32 = *v37;
    v28 = a4 - (v11 * 2.0 + 2.0);
    if (v6)
    {
      v14 = @" |";
    }

    v30 = v14;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        [(AMSCommandLineDialogTask *)v33 dialogPadding];
        v19 = [&stru_1F071BA78 stringByPaddingToLength:v18 withString:@" " startingAtIndex:0];
        v20 = v30;
        v21 = v31;
        v22 = [v17 length];
        if (v34)
        {
          v23 = (v28 - v22) * 0.5;
          v24 = vcvtpd_s64_f64(v23);
          v25 = [&stru_1F071BA78 stringByPaddingToLength:vcvtmd_s64_f64(v23) withString:@" " startingAtIndex:0];
        }

        else
        {
          v24 = v28 - v22;
          v25 = &stru_1F071BA78;
        }

        v26 = [&stru_1F071BA78 stringByPaddingToLength:v24 withString:@" " startingAtIndex:0];
        [v35 appendFormat:@"%@%@%@%@%@%@%@\n", v21, v19, v25, v17, v26, v19, v20];
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  return v35;
}

- (id)_createTextfieldWithTextfield:(id)a3 width:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(AMSCommandLineDialogTask *)self dialogPadding];
  v9 = a4 - (v8 * 2.0 + 2.0);
  v10 = [&stru_1F071BA78 stringByPaddingToLength:v9 - 2 withString:@"-" startingAtIndex:0];
  v11 = [(AMSCommandLineDialogTask *)self _createText:v10 width:a4 centered:1 omitLeftPipe:0];
  [v7 appendString:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 text];
  v14 = v13;
  v23 = v6;
  if (v13)
  {
    v15 = [v12 stringWithFormat:@"| %@", v13, v6];
  }

  else
  {
    v16 = [v6 placeholder];
    v15 = [v12 stringWithFormat:@"| %@", v16, v23];
  }

  v17 = [v15 stringByPaddingToLength:v9 - 1 withString:@" " startingAtIndex:0];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|", v17];

  v19 = [(AMSCommandLineDialogTask *)self _createText:v18 width:a4 centered:0 omitLeftPipe:0];
  [v7 appendString:v19];

  v20 = [&stru_1F071BA78 stringByPaddingToLength:v9 - 2 withString:@"-" startingAtIndex:0];
  v21 = [(AMSCommandLineDialogTask *)self _createText:v20 width:a4 centered:1 omitLeftPipe:0];
  [v7 appendString:v21];

  return v7;
}

- (int64_t)_gatherButtonInput
{
  if (+[AMSUnitTests isRunningUnitTests])
  {
    [(AMSCommandLineDialogTask *)self _printMessage:@"NOTE: Skipping button input while running in unit tests.\n      Automatically selecting the first button...\n"];
    return 0;
  }

  v3 = [(AMSCommandLineDialogTask *)self request];
  v4 = [v3 buttonActions];
  v5 = [v4 count];

  if (!v5)
  {
    [(AMSCommandLineDialogTask *)self _printMessage:@"Press <return> to continue..."];
    v12 = [(AMSCommandLineDialogTask *)self _getUserInput];
    return 0;
  }

  while (1)
  {
    [(AMSCommandLineDialogTask *)self _printMessage:@"Select a button: "];
    v6 = [(AMSCommandLineDialogTask *)self _getUserInput];
    v7 = [v6 integerValue];
    v8 = v7 - 1;
    if (v7 >= 1)
    {
      v9 = [(AMSCommandLineDialogTask *)self request];
      v10 = [v9 buttonActions];
      v11 = [v10 count];

      if (v8 < v11)
      {
        break;
      }
    }

    [(AMSCommandLineDialogTask *)self _printMessage:@"Invalid input detected!\n"];
  }

  return v8;
}

- (id)_gatherTextfieldInput
{
  v38 = *MEMORY[0x1E69E9840];
  if (+[AMSUnitTests isRunningUnitTests])
  {
    [(AMSCommandLineDialogTask *)self _printMessage:@"NOTE: Skipping textfield input while running in unit tests.\n"];
    v3 = 0;
    goto LABEL_24;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(AMSCommandLineDialogTask *)self request];
  v5 = [v4 textFields];

  obj = v5;
  v29 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (!v29)
  {
    goto LABEL_23;
  }

  v6 = 0x1E696A000uLL;
  v7 = *v31;
  v26 = *v31;
  v27 = self;
  do
  {
    v8 = 0;
    do
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      v10 = [v9 text];
      v11 = [v10 length];

      v12 = *(v6 + 3776);
      v13 = [v9 placeholder];
      v14 = v13;
      if (v11)
      {
        v15 = [v9 text];
        v16 = [v12 stringWithFormat:@"Enter response for '%@' textfield [%@]: ", v14, v15];
      }

      else
      {
        v16 = [v12 stringWithFormat:@"Enter response for '%@' textfield: ", v13];
      }

      [(AMSCommandLineDialogTask *)self _printMessage:v16];
      if ([v9 secure])
      {
        memset(&v36, 0, sizeof(v36));
        memset(&v35, 0, sizeof(v35));
        tcgetattr(0, &v36);
        v35 = v36;
        v36.c_lflag &= ~8uLL;
        tcsetattr(0, 0, &v36);
        scanf("%s", v34);
        v17 = [*(v6 + 3776) stringWithUTF8String:v34];
        tcsetattr(0, 0, &v35);
        [(AMSCommandLineDialogTask *)self _printMessage:@"\n"];
      }

      else
      {
        v17 = [(AMSCommandLineDialogTask *)self _getUserInput];
      }

      v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v19 = [v17 stringByTrimmingCharactersInSet:v18];
      if ([v19 length])
      {

LABEL_18:
        goto LABEL_19;
      }

      v20 = v6;
      v21 = v3;
      v22 = [v9 text];
      v23 = [v22 length];

      if (v23)
      {
        [v9 text];
        v17 = v18 = v17;
        v3 = v21;
        v6 = v20;
        v7 = v26;
        self = v27;
        goto LABEL_18;
      }

      v3 = v21;
      v6 = v20;
      v7 = v26;
      self = v27;
LABEL_19:
      [v3 addObject:v17];

      ++v8;
    }

    while (v29 != v8);
    v24 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    v29 = v24;
  }

  while (v24);
LABEL_23:

LABEL_24:

  return v3;
}

- (id)_getUserInput
{
  v2 = [MEMORY[0x1E696AC00] fileHandleWithStandardInput];
  v3 = [v2 availableData];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

- (void)_printMessage:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v3 = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
  [v3 writeData:v4];
}

@end