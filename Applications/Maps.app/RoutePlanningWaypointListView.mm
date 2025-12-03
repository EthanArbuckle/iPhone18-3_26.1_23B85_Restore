@interface RoutePlanningWaypointListView
- (BOOL)_canDeleteWaypoints;
- (BOOL)_hasAllValidWaypoints;
- (BOOL)_shouldEnableAddStopCell;
- (BOOL)_supportsCollapsingStops;
- (BOOL)addStop;
- (BOOL)canDeleteWaypointForCellAtIndex:(unint64_t)index;
- (BOOL)replaceWaypointAtIndex:(unint64_t)index withWaypoint:(id)waypoint;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)intrinsicContentSize;
- (NSArray)waypoints;
- (RoutePlanningWaypointListView)initWithWaypoints:(id)waypoints editingMode:(unint64_t)mode delegate:(id)delegate waypointInfoProvider:(id)provider;
- (RoutePlanningWaypointListViewDelegate)delegate;
- (double)_rowHeight;
- (id)_findLastEmptyWaypointCell:(id)cell;
- (id)cellForIndex:(unint64_t)index;
- (id)contextMenuForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)searchFieldIndexForWaypoints:(id)waypoints;
- (unint64_t)userAddedWaypointCount;
- (void)_layoutDottedLineForCell:(id)cell atIndexPath:(id)path;
- (void)_layoutDottedLines;
- (void)_refreshAddStopCellEnabled;
- (void)_reloadAllRows;
- (void)_restoreCurrentlySelectedEditingIfNeeded:(id)needed;
- (void)_updateLayoutGuideForCurrentlyEditingField;
- (void)cell:(id)cell didChangeInputText:(id)text;
- (void)cell:(id)cell didReceiveMapItem:(id)item;
- (void)cellDidClearInputText:(id)text;
- (void)cellDidRequestSearch:(id)search;
- (void)cellDidStartEditing:(id)editing withUserInteraction:(BOOL)interaction;
- (void)cellDidStopEditing:(id)editing;
- (void)collapseStopsIfNeeded;
- (void)deselectAllRows;
- (void)expandStopsIfNeeded;
- (void)performDeleteAtIndex:(unint64_t)index;
- (void)refreshWaypointDisplay;
- (void)scrollWaypointCellToVisible:(id)visible animated:(BOOL)animated;
- (void)selectNextSearchField;
- (void)selectRowIndex:(unint64_t)index;
- (void)setMprEnabled:(BOOL)enabled;
- (void)setWaypoints:(id)waypoints;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoutePlanningWaypointListView

- (RoutePlanningWaypointListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [path row];

    [(RoutePlanningWaypointListView *)self performDeleteAtIndex:v7];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(NSMutableArray *)self->_rows count]>= 4 && [(RoutePlanningWaypointListView *)self mprEnabled]&& !self->_hasCollapsedStops && [(RoutePlanningWaypointListView *)self editingMode])
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = 0;
    if ((isKindOfClass & 1) != 0 && v8)
    {
      v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_waypoints, "objectAtIndexedSubscript:", [pathCopy row]);
      composedWaypoint = [v11 composedWaypoint];
      isServerProvidedWaypoint = [composedWaypoint isServerProvidedWaypoint];

      v10 = isServerProvidedWaypoint ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if ([(RoutePlanningWaypointListView *)self _canDeleteWaypoints])
  {
    v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (-[RoutePlanningWaypointListView canDeleteWaypointForCellAtIndex:](self, "canDeleteWaypointForCellAtIndex:", [pathCopy row]))
    {
      [(RoutePlanningWaypointListView *)self contextMenuForCell:v11];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100BD25B4;
      v16 = v15[3] = &unk_101660440;
      v12 = v16;
      v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v15];
    }

    else if (v11)
    {
      v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = [pathCopy row];
  v9 = [indexPathCopy row];
  if (v8 != v9)
  {
    v10 = v9;
    if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    v11 = [pathCopy row];
    selectedIndex = self->_selectedIndex;
    if (v11 == selectedIndex)
    {
      selectedIndex = [indexPathCopy row];
      self->_selectedIndex = selectedIndex;
    }

    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || selectedIndex >= [(NSMutableArray *)self->_rows count])
    {
LABEL_8:
      v13 = 0;
    }

    else
    {
      v13 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:self->_selectedIndex];
    }

    [(NSMutableArray *)self->_rows _maps_moveObjectAtIndex:v8 toIndex:v10];
    [(NSMutableArray *)self->_waypoints _maps_moveObjectAtIndex:v8 toIndex:v10];
    if (v13)
    {
      self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:v13];
    }

    v14 = [(NSMutableArray *)self->_rows objectAtIndex:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setCellIndex:v8];
    v17 = [(NSMutableArray *)self->_rows objectAtIndex:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setCellIndex:v10];
    delegate = [(RoutePlanningWaypointListView *)self delegate];
    LOBYTE(v19) = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      v22 = [(NSMutableArray *)self->_waypoints objectAtIndexedSubscript:v10];
      [delegate2 waypointListView:self didMoveWaypoint:v22 fromIndex:v8 toIndex:v10];
    }
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  lastObject = [(NSMutableArray *)self->_rows lastObject];
  objc_opt_class();
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NSMutableArray *)self->_rows count]- 1;
  }

  v9 = [indexPathCopy row];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, v9 < v8) || v9 >= [(NSMutableArray *)self->_rows count])
  {
    v11 = indexPathCopy;
  }

  else
  {
    v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v10 - 1, [indexPathCopy section]);
  }

  v12 = v11;

  return v12;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[RoutePlanningWaypointListView editingMode](self, "editingMode") && (v6 = [pathCopy row], v6 < -[NSMutableArray count](self->_waypoints, "count")) && !self->_hasCollapsedStops)
  {
    v9 = [(NSMutableArray *)self->_waypoints objectAtIndexedSubscript:v6];
    composedWaypoint = [v9 composedWaypoint];
    isServerProvidedWaypoint = [composedWaypoint isServerProvidedWaypoint];

    v7 = isServerProvidedWaypoint ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performDeleteAtIndex:(unint64_t)index
{
  if (![(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:?])
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      indexCopy2 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
      v34 = 2080;
      indexCopy = "RoutePlanningWaypointListView.m";
      v36 = 1024;
      *v37 = 997;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        indexCopy2 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v7 = sub_100BD3038();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_36;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(RoutePlanningWaypointListView *)selfCopy performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v21, selfCopy, v23];

        goto LABEL_29;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v21, selfCopy];
LABEL_29:

LABEL_36:
    rows = selfCopy->_rows;
    *buf = 138543874;
    indexCopy2 = selfCopy;
    v34 = 2048;
    indexCopy = index;
    v36 = 2112;
    *v37 = rows;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot delete stop at index (%lu) with rows %@", buf, 0x20u);

    goto LABEL_37;
  }

  [(RoutePlanningWaypointListView *)self deselectAllRows];
  if ([(NSMutableArray *)self->_rows count]> index)
  {
    v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (-[RoutePlanningWaypointListView editingMode](self, "editingMode") && v7 && (-[NSObject waypoints](v7, "waypoints"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 == 1))
    {
      v10 = sub_100BD3038();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        indexCopy2 = index;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Deleting waypoint at index %lu", buf, 0xCu);
      }

      if (self->_selectedIndex == index)
      {
        self->_activelyEditingSelectedField = 0;
        self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
      }

      waypoints = [(RoutePlanningWaypointListView *)self waypoints];
      v12 = [waypoints mutableCopy];

      [v12 removeObjectAtIndex:index];
      [(RoutePlanningWaypointListView *)self setWaypoints:v12];
      [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
      delegate = [(RoutePlanningWaypointListView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(RoutePlanningWaypointListView *)self delegate];
        [delegate2 waypointListView:self didDeleteWaypointAtIndex:index];
      }
    }

    else
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = "add stop cell";
        if (v7)
        {
          v29 = "collapsed waypoint cell";
        }

        v30 = [NSString stringWithFormat:@"Trying to delete %s", v29];
        *buf = 136316162;
        indexCopy2 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
        v34 = 2080;
        indexCopy = "RoutePlanningWaypointListView.m";
        v36 = 1024;
        *v37 = 1011;
        *&v37[4] = 2080;
        *&v37[6] = "validToDelete";
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (!sub_100E03634())
      {
        goto LABEL_37;
      }

      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        *buf = 138412290;
        indexCopy2 = v31;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_37:
    return;
  }

  v25 = sub_10006D178();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    indexCopy2 = "[RoutePlanningWaypointListView performDeleteAtIndex:]";
    v34 = 2080;
    indexCopy = "RoutePlanningWaypointListView.m";
    v36 = 1024;
    *v37 = 1005;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v26 = +[NSThread callStackSymbols];
      *buf = 138412290;
      indexCopy2 = v26;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_37;
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if ([(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:v8])
  {
    objc_initWeak(&location, self);
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[RoutePlanning] Delete" value:@"localized string not found" table:0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BD32CC;
    v15[3] = &unk_10164CE98;
    objc_copyWeak(v16, &location);
    v16[1] = v8;
    v11 = [UIContextualAction contextualActionWithStyle:1 title:v10 handler:v15];
    v18 = v11;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = [UISwipeActionsConfiguration configurationWithActions:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canDeleteWaypointForCellAtIndex:(unint64_t)index
{
  if (![(RoutePlanningWaypointListView *)self _canDeleteWaypoints]|| [(NSMutableArray *)self->_rows count]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v7 waypoints], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 <= 1))
  {
    waypoints = [v7 waypoints];
    firstObject = [waypoints firstObject];
    composedWaypoint = [firstObject composedWaypoint];
    isServerProvidedWaypoint = [composedWaypoint isServerProvidedWaypoint];

    v10 = isServerProvidedWaypoint ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_canDeleteWaypoints
{
  v3 = sub_1000282CC(self->_waypoints, &stru_10164CE70);
  v4 = [v3 count];

  return [(RoutePlanningWaypointListView *)self editingMode]&& [(RoutePlanningWaypointListView *)self mprEnabled]&& v4 >= 3 && !self->_hasCollapsedStops;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [pathCopy row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    waypoints = [v7 waypoints];
    if ([waypoints count] >= 2 && -[RoutePlanningWaypointListView _supportsCollapsingStops](self, "_supportsCollapsingStops"))
    {
      v9 = sub_100BD3038();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did select collapsed stops", &v36, 2u);
      }

      delegate = [(RoutePlanningWaypointListView *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v36 = 136315906;
          v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
          v38 = 2080;
          v39 = "RoutePlanningWaypointListView.m";
          v40 = 1024;
          v41 = 898;
          v42 = 2080;
          v43 = "[self.delegate respondsToSelector:@selector(waypointListView:didSelectCollapsedWaypoints:)]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
        }

        if (sub_100E03634())
        {
          v23 = sub_10006D178();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = +[NSThread callStackSymbols];
            v36 = 138412290;
            v37 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
          }
        }
      }

      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate2 waypointListView:self didSelectCollapsedWaypoints:waypoints];
LABEL_23:

LABEL_29:
      goto LABEL_30;
    }

    if ([(RoutePlanningWaypointListView *)self editingMode]<= 1)
    {
      delegate3 = [(RoutePlanningWaypointListView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [pathCopy row];
        v16 = v15;
        if (self->_hasCollapsedStops && v15 == 1)
        {
          v25 = sub_10006D178();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v36 = 136315906;
            v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
            v38 = 2080;
            v39 = "RoutePlanningWaypointListView.m";
            v40 = 1024;
            v41 = 905;
            v42 = 2080;
            v43 = "!_hasCollapsedStops || adjustedIndex != 1";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
          }

          if (!sub_100E03634())
          {
            v16 = 1;
            goto LABEL_20;
          }

          v17 = sub_10006D178();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v26 = +[NSThread callStackSymbols];
            v36 = 138412290;
            v37 = v26;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
          }

          v16 = 1;
        }

        else
        {
          if (!self->_hasCollapsedStops || v15 < 2)
          {
            goto LABEL_20;
          }

          if ([(NSMutableArray *)self->_rows count]< 3 || [(NSMutableArray *)self->_rows count]>= 5)
          {
            v27 = sub_10006D178();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 907;
              v42 = 2080;
              v43 = "_rows.count >= 3 && _rows.count <= 4";
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v28 = sub_10006D178();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }

          v17 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:1];
          waypoints2 = [v17 waypoints];
          if ([waypoints2 count] <= 1)
          {
            v30 = sub_10006D178();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 910;
              v42 = 2080;
              v43 = "collapsedWaypoints.count > 1";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v31 = sub_10006D178();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }

          v16 = [waypoints2 count] + v16 - 1;
          if (v16 >= [(NSMutableArray *)self->_waypoints count])
          {
            v33 = sub_10006D178();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315906;
              v37 = "[RoutePlanningWaypointListView tableView:didSelectRowAtIndexPath:]";
              v38 = 2080;
              v39 = "RoutePlanningWaypointListView.m";
              v40 = 1024;
              v41 = 912;
              v42 = 2080;
              v43 = "adjustedIndex < _waypoints.count";
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v36, 0x26u);
            }

            if (sub_100E03634())
            {
              v34 = sub_10006D178();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = +[NSThread callStackSymbols];
                v36 = 138412290;
                v37 = v35;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
              }
            }
          }
        }

LABEL_20:
        v19 = sub_100BD3038();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v36 = 134217984;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Did select waypoint at adjusted index %lu", &v36, 0xCu);
        }

        delegate2 = [(RoutePlanningWaypointListView *)self delegate];
        firstObject = [waypoints firstObject];
        [delegate2 waypointListView:self didSelectWaypoint:firstObject atIndex:v16];

        goto LABEL_23;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = sub_100BD3038();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Did select Add Stop", &v36, 2u);
    }

    waypoints = [(RoutePlanningWaypointListView *)self delegate];
    [waypoints waypointListViewDidSelectAddStop:self];
    goto LABEL_29;
  }

LABEL_30:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [pathCopy row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    waypoints = [v8 waypoints];
    if ([waypoints count] <= 1)
    {
    }

    else
    {
      _supportsCollapsingStops = [(RoutePlanningWaypointListView *)self _supportsCollapsingStops];

      if (_supportsCollapsingStops)
      {
        goto LABEL_10;
      }
    }
  }

  if ([(RoutePlanningWaypointListView *)self editingMode]== 1)
  {
LABEL_10:
    isEnabled = 1;
    goto LABEL_18;
  }

  v12 = -[NSMutableArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [pathCopy row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    isEnabled = [v14 isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

LABEL_18:
  return isEnabled;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  rows = self->_rows;
  v5 = [path row];

  return [(NSMutableArray *)rows objectAtIndexedSubscript:v5];
}

- (id)contextMenuForCell:(id)cell
{
  cellCopy = cell;
  v5 = [(NSMutableArray *)self->_rows indexOfObject:cellCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, ![(RoutePlanningWaypointListView *)self canDeleteWaypointForCellAtIndex:v5]))
  {
    v11 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[RoutePlanning] Delete" value:@"localized string not found" table:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100BD4164;
    v13[3] = &unk_101658B58;
    objc_copyWeak(v14, &location);
    v14[1] = v6;
    v9 = [UIAction actionWithTitle:v8 image:0 identifier:0 handler:v13];

    v16 = v9;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v10];

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)cellDidClearInputText:(id)text
{
  textCopy = text;
  v5 = sub_100BD3038();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did clear input text", v9, 2u);
  }

  delegate = [(RoutePlanningWaypointListView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RoutePlanningWaypointListView *)self delegate];
    [delegate2 waypointListView:self didClearInputTextForWaypointAtIndex:{-[NSMutableArray indexOfObject:](self->_rows, "indexOfObject:", textCopy)}];
  }
}

- (void)cellDidRequestSearch:(id)search
{
  searchCopy = search;
  delegate = [(RoutePlanningWaypointListView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will request search", v13, 2u);
    }

    if (!self->_activelyEditingSelectedField)
    {
      self->_activelyEditingSelectedField = 1;
      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate3 = [(RoutePlanningWaypointListView *)self delegate];
        [delegate3 didInteractWithWaypointFields];
      }
    }

    self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:searchCopy];
    delegate4 = [(RoutePlanningWaypointListView *)self delegate];
    currentText = [searchCopy currentText];
    [delegate4 invokeSearchWithText:currentText];
  }
}

- (void)cell:(id)cell didReceiveMapItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  if (!self->_activelyEditingSelectedField)
  {
    self->_activelyEditingSelectedField = 1;
    delegate = [(RoutePlanningWaypointListView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate2 didInteractWithWaypointFields];
    }
  }

  delegate3 = [(RoutePlanningWaypointListView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [[SearchResult alloc] initWithMapItem:itemCopy];
    v13 = [SearchFieldItem searchFieldItemWithObject:v12];
    delegate4 = [(RoutePlanningWaypointListView *)self delegate];
    [delegate4 waypointListView:self didReceiveItem:v13];
  }
}

- (void)cell:(id)cell didChangeInputText:(id)text
{
  cellCopy = cell;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);
  if (WeakRetained == cellCopy && [textCopy length])
  {

LABEL_7:
    [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
    goto LABEL_9;
  }

  v8 = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);
  if (v8 == cellCopy)
  {

    goto LABEL_9;
  }

  v9 = [textCopy length];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!self->_activelyEditingSelectedField)
  {
    self->_activelyEditingSelectedField = 1;
    delegate = [(RoutePlanningWaypointListView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate2 didInteractWithWaypointFields];
    }
  }

  delegate3 = [(RoutePlanningWaypointListView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate4 = [(RoutePlanningWaypointListView *)self delegate];
    [delegate4 updateAutoCompleteWithText:textCopy];
  }
}

- (void)cellDidStopEditing:(id)editing
{
  _shouldEnableAddStopCell = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  [WeakRetained setEnabled:_shouldEnableAddStopCell];

  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    delegate = [(RoutePlanningWaypointListView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = sub_100BD3038();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        selectedIndex = self->_selectedIndex;
        v11 = 134217984;
        v12 = selectedIndex;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did stop editing field at index %lu", &v11, 0xCu);
      }

      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate2 updateAutoCompleteWithText:0];
    }
  }
}

- (void)cellDidStartEditing:(id)editing withUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  editingCopy = editing;
  self->_selectedIndex = [(NSMutableArray *)self->_rows indexOfObject:editingCopy];
  v7 = sub_100BD3038();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    selectedIndex = self->_selectedIndex;
    v19 = 134217984;
    v20 = selectedIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Did start editing field at index %lu", &v19, 0xCu);
  }

  [(RoutePlanningWaypointListView *)self _updateLayoutGuideForCurrentlyEditingField];
  if (self->_activelyEditingSelectedField == interactionCopy)
  {
    [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:editingCopy animated:1];
    if (!interactionCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    self->_activelyEditingSelectedField = interactionCopy;
    if (!interactionCopy)
    {
      [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:editingCopy animated:1];
      goto LABEL_15;
    }

    delegate = [(RoutePlanningWaypointListView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate2 waypointListView:self didStartEditingWaypointAtIndex:self->_selectedIndex];
    }

    delegate3 = [(RoutePlanningWaypointListView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(RoutePlanningWaypointListView *)self delegate];
      [delegate4 didInteractWithWaypointFields];
    }

    [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:editingCopy animated:1];
  }

  delegate5 = [(RoutePlanningWaypointListView *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate6 = [(RoutePlanningWaypointListView *)self delegate];
    currentText = [editingCopy currentText];
    [delegate6 updateAutoCompleteWithText:currentText];
  }

LABEL_15:
}

- (BOOL)_supportsCollapsingStops
{
  if ([(RoutePlanningWaypointListView *)self editingMode]< 2)
  {
    return 1;
  }

  if (sub_10000FA08(self) != 5 || (_UISolariumEnabled() & 1) != 0)
  {
    return 0;
  }

  return GEOConfigGetBOOL();
}

- (void)collapseStopsIfNeeded
{
  if ([(RoutePlanningWaypointListView *)self _supportsCollapsingStops]&& self->_expandedStops)
  {
    self->_expandedStops = 0;
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3 = sub_100BD3038();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will now show reduced/collapsed stops", buf, 2u);
    }

    v4 = [(NSMutableArray *)self->_waypoints count];
    v5 = sub_10000FA08(self);
    v6 = 4;
    if (v5 == 5)
    {
      v6 = 9;
    }

    if (v4 > v6)
    {
      v7 = sub_100BD3038();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Reloading because we have enough stops that we should collapse them", v8, 2u);
      }

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (void)expandStopsIfNeeded
{
  if (!self->_expandedStops)
  {
    v3 = sub_100BD3038();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will now show all stops", buf, 2u);
    }

    self->_expandedStops = 1;
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    if (self->_hasCollapsedStops)
    {
      v4 = sub_100BD3038();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Reloading rows because we had collapsed stops", v5, 2u);
      }

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (void)_refreshAddStopCellEnabled
{
  v3 = [(RoutePlanningWaypointListView *)self _findLastEmptyWaypointCell:self->_rows];
  objc_storeWeak(&self->_lastEmptyWaypointCell, v3);

  _shouldEnableAddStopCell = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  [WeakRetained setEnabled:_shouldEnableAddStopCell];
}

- (id)_findLastEmptyWaypointCell:(id)cell
{
  cellCopy = cell;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100BD4E44;
  v11 = sub_100BD4E54;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BD4E5C;
  v6[3] = &unk_10164CE50;
  v6[4] = &v7;
  [cellCopy enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_shouldEnableAddStopCell
{
  WeakRetained = objc_loadWeakRetained(&self->_lastEmptyWaypointCell);

  if (WeakRetained)
  {
    LOBYTE(mprEnabled) = 0;
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
    mprEnabled = [(RoutePlanningWaypointListView *)self mprEnabled];
    if (mprEnabled)
    {
      if (UInteger)
      {
        LOBYTE(mprEnabled) = [(RoutePlanningWaypointListView *)self userAddedWaypointCount]< UInteger;
      }

      else
      {
        LOBYTE(mprEnabled) = 1;
      }
    }
  }

  return mprEnabled;
}

- (BOOL)addStop
{
  if ([(RoutePlanningWaypointListView *)self editingMode]!= 2)
  {
    WeakRetained = sub_100BD3038();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      v16 = "Will not add stop, incorrect editing mode";
LABEL_10:
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEBUG, v16, v18, 2u);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  _shouldEnableAddStopCell = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
  WeakRetained = sub_100BD3038();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG);
  if ((_shouldEnableAddStopCell & 1) == 0)
  {
    if (v5)
    {
      *v18 = 0;
      v16 = "Will not add stop, row should not be enabled";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEBUG, "Will add stop", v18, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
  v6 = objc_alloc_init(SearchFieldItem);
  v7 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
  v8 = [RoutePlanningWaypointCell alloc];
  v20 = v6;
  v9 = 1;
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v11 = [(RoutePlanningWaypointCell *)v8 initWithWaypoints:v10 waypointIndex:0 editable:v7 delegate:self waypointInfoProvider:0 cellIndex:[(NSMutableArray *)self->_rows count]];

  v12 = [(NSMutableArray *)self->_rows count]- (WeakRetained != 0);
  [(NSMutableArray *)self->_rows insertObject:v11 atIndex:v12];
  [(NSMutableArray *)self->_waypoints insertObject:v6 atIndex:v12];
  tableView = self->_tableView;
  v14 = [NSIndexPath indexPathForRow:v12 inSection:0];
  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  [(RoutePlanningWaypointTableView *)tableView insertRowsAtIndexPaths:v15 withRowAnimation:100];

  [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
  [(RoutePlanningWaypointListView *)self _layoutDottedLines];
  [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];

LABEL_12:
  return v9;
}

- (void)_layoutDottedLineForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(NSMutableArray *)self->_dottedLines count];
  if (v8 != [(NSMutableArray *)self->_rows count]- 1)
  {
    v54 = sub_10006D178();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v71 = "[RoutePlanningWaypointListView _layoutDottedLineForCell:atIndexPath:]";
      v72 = 2080;
      v73 = "RoutePlanningWaypointListView.m";
      v74 = 1024;
      v75 = 592;
      v76 = 2080;
      v77 = "_dottedLines.count == _rows.count - 1";
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v55 = sub_10006D178();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v71 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = [pathCopy row];
  if ([(NSMutableArray *)self->_rows count]!= v9 + 1)
  {
    v10 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:?];
    [cellCopy layoutIfNeeded];
    [v10 layoutIfNeeded];
    v11 = [cellCopy viewWithTag:10101];
    v12 = [v10 viewWithTag:10101];
    window = [v11 window];
    if (window)
    {
      v14 = window;
      window2 = [v12 window];

      if (window2)
      {
        tableView = self->_tableView;
        [v11 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        superview = [v11 superview];
        [(RoutePlanningWaypointTableView *)tableView convertRect:superview fromView:v18, v20, v22, v24];
        v62 = v27;
        v63 = v26;
        v60 = v29;
        v61 = v28;

        v30 = self->_tableView;
        [v12 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        superview2 = [v12 superview];
        [(RoutePlanningWaypointTableView *)v30 convertRect:superview2 fromView:v32, v34, v36, v38];
        v58 = v41;
        v59 = v40;
        rect = v42;
        v44 = v43;

        if ((_UISolariumEnabled() & 1) == 0)
        {
          sub_10000FA08(cellCopy);
        }

        _UISolariumEnabled();
        v78.origin.x = v63;
        v78.origin.y = v62;
        v78.size.width = v61;
        v78.size.height = v60;
        CGRectGetMidX(v78);
        v79.origin.x = v63;
        v79.origin.y = v62;
        v79.size.width = v61;
        v79.size.height = v60;
        CGRectGetMaxY(v79);
        v80.origin.y = v58;
        v80.origin.x = v59;
        v80.size.width = rect;
        v80.size.height = v44;
        CGRectGetMinY(v80);
        v81.origin.x = v63;
        v81.origin.y = v62;
        v81.size.width = v61;
        v81.size.height = v60;
        CGRectGetMaxY(v81);
        UIRectRoundToViewScale();
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [(NSMutableArray *)self->_dottedLines objectAtIndexedSubscript:v9];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_100BD56CC;
        v65 = v64[3] = &unk_10164E3F8;
        v66 = v46;
        v67 = v48;
        v68 = v50;
        v69 = v52;
        v53 = v65;
        [UIView performWithoutAnimation:v64];
      }
    }
  }
}

- (void)_layoutDottedLines
{
  if (([(RoutePlanningWaypointTableView *)self->_tableView hasUncommittedUpdates]& 1) == 0)
  {
    if ([(NSMutableArray *)self->_rows count])
    {
      v3 = [(NSMutableArray *)self->_rows count]- 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 != [(NSMutableArray *)self->_dottedLines count])
    {
      for (i = [[NSMutableArray alloc] initWithCapacity:v3]; v3; --v3)
      {
        lastObject = [(NSMutableArray *)self->_dottedLines lastObject];
        if (lastObject)
        {
          v6 = lastObject;
          [(NSMutableArray *)self->_dottedLines removeLastObject];
        }

        else
        {
          if (_UISolariumEnabled())
          {
            v7 = 1;
          }

          else
          {
            v7 = 4;
          }

          v6 = [[TransitDirectionsColoredLine alloc] initWithStyle:v7];
          [(TransitDirectionsColoredLine *)v6 setAutoresizingMask:16];
          if (_UISolariumEnabled())
          {
            v8 = +[UIColor labelColor];
            v9 = [v8 colorWithAlphaComponent:0.1];
            [(TransitDirectionsColoredLine *)v6 setLineColor:v9];
          }

          else
          {
            v8 = +[UIColor systemGrayColor];
            [(TransitDirectionsColoredLine *)v6 setLineColor:v8];
          }

          [(RoutePlanningWaypointTableView *)self->_tableView addSubview:v6];
        }

        [(NSMutableArray *)i addObject:v6];
        [(RoutePlanningWaypointTableView *)self->_tableView sendSubviewToBack:v6];
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = self->_dottedLines;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * j) removeFromSuperview];
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      dottedLines = self->_dottedLines;
      self->_dottedLines = i;
    }

    v16 = self->_dottedLines;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100BD59A0;
    v17[3] = &unk_10164CE28;
    v17[4] = self;
    [(NSMutableArray *)v16 enumerateObjectsUsingBlock:v17];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointListView;
  changeCopy = change;
  [(RoutePlanningWaypointListView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(RoutePlanningWaypointListView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (id)cellForIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_rows count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index];
  }

  return v5;
}

- (unint64_t)searchFieldIndexForWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if (waypointsCopy)
  {
    if ([(NSMutableArray *)self->_rows count])
    {
      v5 = 0;
      while (1)
      {
        v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5];
        }

        else
        {
          v7 = 0;
        }

        waypoints = [v7 waypoints];

        if (waypoints == waypointsCopy)
        {
          break;
        }

        if (++v5 >= [(NSMutableArray *)self->_rows count])
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [NSString stringWithFormat:@"The waypoints (%@) should be in the list (%@)", waypointsCopy, self->_waypoints];
        *buf = 136315906;
        v15 = "[RoutePlanningWaypointListView searchFieldIndexForWaypoints:]";
        v16 = 2080;
        v17 = "RoutePlanningWaypointListView.m";
        v18 = 1024;
        v19 = 510;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)scrollWaypointCellToVisible:(id)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  v7 = [(NSMutableArray *)self->_rows indexOfObject:visibleCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = sub_100BD3038();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = visibleCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Scrolling to frame cell at index %lu: %@", &v12, 0x16u);
    }

    tableView = self->_tableView;
    v11 = [NSIndexPath indexPathForRow:v8 inSection:0];
    [(RoutePlanningWaypointTableView *)tableView scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:animatedCopy];
  }
}

- (void)deselectAllRows
{
  v3 = sub_100BD3038();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deselect all rows", buf, 2u);
  }

  self->_activelyEditingSelectedField = 0;
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_rows;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 endEditing];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_restoreCurrentlySelectedEditingIfNeeded:(id)needed
{
  neededCopy = needed;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (selectedIndex < [(NSMutableArray *)self->_rows count]&& (([(NSMutableArray *)self->_rows objectAtIndexedSubscript:selectedIndex], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v8 = v7, v6, v8))
    {
      waypoints = [v8 waypoints];
      v10 = [waypoints count];

      if (v10 < 2)
      {
        v13 = sub_100BD3038();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v19 = 134217984;
          v20 = selectedIndex;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Restoring editing for currently selected row at index %lu", &v19, 0xCu);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [NSString stringWithFormat:@"Can only select waypoint cells"];
            v19 = 136316162;
            v20 = "[RoutePlanningWaypointListView _restoreCurrentlySelectedEditingIfNeeded:]";
            v21 = 2080;
            v22 = "RoutePlanningWaypointListView.m";
            v23 = 1024;
            v24 = 473;
            v25 = 2080;
            v26 = "[cell isKindOfClass:[RoutePlanningWaypointCell class]]";
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v19, 0x30u);
          }

          if (sub_100E03634())
          {
            v17 = sub_10006D178();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = +[NSThread callStackSymbols];
              v19 = 138412290;
              v20 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
            }
          }
        }

        window = [v8 window];
        [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:v8 animated:window != 0];

        [v8 beginEditing];
        goto LABEL_13;
      }

      v11 = "cell at index has collapsed waypoints";
    }

    else
    {
      v6 = 0;
      v11 = "cell is nil";
    }

    v12 = sub_100BD3038();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136446210;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Clearing previous selection/editing and forcing no autocomplete: %{public}s", &v19, 0xCu);
    }

    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activelyEditingSelectedField = 0;
    [(RoutePlanningWaypointListView *)self cellDidStopEditing:neededCopy];
LABEL_13:
  }
}

- (void)selectNextSearchField
{
  selectedIndex = [(RoutePlanningWaypointListView *)self selectedIndex];
  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || (v4 = selectedIndex + 1, selectedIndex + 1 > [(RoutePlanningWaypointListView *)self indexForLastWaypointCell]))
  {
    v5 = sub_100BD3038();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found no next field to select, will deselect all", v7, 2u);
    }

    [(RoutePlanningWaypointListView *)self deselectAllRows];
  }

  else
  {
    v6 = sub_100BD3038();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Select next search field", buf, 2u);
    }

    [(RoutePlanningWaypointListView *)self selectRowIndex:v4];
  }
}

- (void)selectRowIndex:(unint64_t)index
{
  waypoints = [(RoutePlanningWaypointListView *)self waypoints];
  v6 = [waypoints count];

  if (v6 <= index)
  {
    if (![(RoutePlanningWaypointListView *)self mprEnabled])
    {
      return;
    }

    v11 = sub_100BD3038();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Selected Add Stop index, will add stop", &v17, 2u);
    }

    delegate = [(RoutePlanningWaypointListView *)self delegate];
    [delegate waypointListViewDidSelectAddStop:self];
  }

  else
  {
    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Selecting row at index %lu", &v17, 0xCu);
    }

    self->_activelyEditingSelectedField = 0;
    self->_selectedIndex = index;
    if ([(NSMutableArray *)self->_rows count]<= index)
    {
      delegate = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      delegate = v9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [NSString stringWithFormat:@"Can only select waypoint cells"];
        v17 = 136316162;
        indexCopy = "[RoutePlanningWaypointListView selectRowIndex:]";
        v19 = 2080;
        v20 = "RoutePlanningWaypointListView.m";
        v21 = 1024;
        v22 = 437;
        v23 = 2080;
        v24 = "[cell isKindOfClass:[RoutePlanningWaypointCell class]]";
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v17, 0x30u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          indexCopy = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }

    if (delegate)
    {
      window = [delegate window];
      [(RoutePlanningWaypointListView *)self scrollWaypointCellToVisible:delegate animated:window != 0];

      [delegate beginEditing];
    }
  }
}

- (double)_rowHeight
{
  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) != 5)
  {
    if (qword_10195E9E0 != -1)
    {
      dispatch_once(&qword_10195E9E0, &stru_10164CDC0);
    }

    v4 = qword_10195E9D8;
    traitCollection = [(RoutePlanningWaypointListView *)self traitCollection];
    v6 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    v7 = [v4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    v8 = _UISolariumEnabled();
    v9 = sub_10000FA08(self);
    v10 = 52.0;
    if (v9 == 5)
    {
      v10 = 36.0;
    }

    v11 = 44.0;
    if (v9 == 5)
    {
      v11 = 28.0;
    }

    if (v8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v11;
    }

    [v7 _mapkit_lineHeight];
    if (v12 + 22.0 > v3)
    {
      [v7 _mapkit_lineHeight];
      v3 = v13 + 22.0;
    }
  }

  else if (sub_10000FA08(self) == 5)
  {
    return 28.0;
  }

  else
  {
    return 44.0;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(RoutePlanningWaypointListView *)self _contentHeight];
  v4 = v3;
  if ([(RoutePlanningWaypointTableView *)self->_tableView isScrollEnabled]&& (sub_10000FA08(self) != 5 || _UISolariumEnabled()))
  {
    traitCollection = [(RoutePlanningWaypointListView *)self traitCollection];
    if ([traitCollection verticalSizeClass] == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    WeakRetained = objc_loadWeakRetained(&self->_addStopCell);
    if (WeakRetained)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
    [(RoutePlanningWaypointTableView *)self->_tableView rowHeight];
    if (v4 >= v10 * v9)
    {
      [(RoutePlanningWaypointTableView *)self->_tableView rowHeight];
      v4 = v11 * v9;
    }
  }

  v12 = UIViewNoIntrinsicMetric;
  v13 = v4;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setMprEnabled:(BOOL)enabled
{
  if (self->_mprEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = sub_100BD3038();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Toggling MPR enabled -> %{public}@", &v8, 0xCu);
    }

    self->_mprEnabled = enabledCopy;
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (BOOL)replaceWaypointAtIndex:(unint64_t)index withWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v7 = [(RoutePlanningWaypointListView *)self cellForIndex:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = 0;
  if ([(RoutePlanningWaypointListView *)self editingMode]== 2 && v9)
  {
    if ([v9 isEditable])
    {
      v11 = sub_100BD3038();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        indexCopy = index;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will replace waypoint at index %lu", buf, 0xCu);
      }

      v22 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
      v12 = [RoutePlanningWaypointCell alloc];
      v24 = waypointCopy;
      v10 = 1;
      v13 = [NSArray arrayWithObjects:&v24 count:1];
      v14 = [NSNumber numberWithUnsignedInteger:index];
      delegate = [v9 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v17 = [(RoutePlanningWaypointCell *)v12 initWithWaypoints:v13 waypointIndex:v14 editable:v22 delegate:delegate waypointInfoProvider:WeakRetained cellIndex:index];

      [v9 prepareForReplacement];
      [(NSMutableArray *)self->_rows replaceObjectAtIndex:index withObject:v17];
      [(NSMutableArray *)self->_waypoints replaceObjectAtIndex:index withObject:waypointCopy];
      tableView = self->_tableView;
      v19 = [NSIndexPath indexPathForRow:index inSection:0];
      v23 = v19;
      v20 = [NSArray arrayWithObjects:&v23 count:1];
      [(RoutePlanningWaypointTableView *)tableView reloadRowsAtIndexPaths:v20 withRowAnimation:5];

      [(RoutePlanningWaypointListView *)self _refreshAddStopCellEnabled];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_reloadAllRows
{
  v3 = objc_opt_new();
  waypoints = [(RoutePlanningWaypointListView *)self waypoints];
  v5 = [waypoints count];
  v6 = sub_100BD3038();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *buf = 134217984;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Reloading all rows for %lu waypoints", buf, 0xCu);
    }

    [(RoutePlanningWaypointListView *)self setHidden:0];
    self->_hasCollapsedStops = 0;
    UInteger = GEOConfigGetUInteger();
    if (![(RoutePlanningWaypointListView *)self mprEnabled]|| UInteger && [(RoutePlanningWaypointListView *)self userAddedWaypointCount]>= UInteger)
    {
      _hasAllValidWaypoints = 0;
    }

    else
    {
      _hasAllValidWaypoints = [(RoutePlanningWaypointListView *)self _hasAllValidWaypoints];
    }

    if (self->_expandedStops || ![(RoutePlanningWaypointListView *)self _supportsCollapsingStops])
    {
      goto LABEL_16;
    }

    v10 = sub_10000FA08(self);
    v11 = 4;
    if (v10 == 5)
    {
      v11 = 9;
    }

    if (v5 > v11 && [(RoutePlanningWaypointListView *)self mprEnabled])
    {
      self->_hasCollapsedStops = 1;
      v12 = [RoutePlanningWaypointCell alloc];
      firstObject = [waypoints firstObject];
      v69 = firstObject;
      v14 = [NSArray arrayWithObjects:&v69 count:1];
      WeakRetained = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v16 = [(RoutePlanningWaypointCell *)v12 initWithWaypoints:v14 waypointIndex:&off_1016E9320 editable:0 delegate:self waypointInfoProvider:WeakRetained cellIndex:0];
      [v3 addObject:v16];

      v17 = [RoutePlanningWaypointCell alloc];
      v18 = [waypoints subarrayWithRange:{1, v5 - 2}];
      v19 = [(RoutePlanningWaypointCell *)v17 initWithWaypoints:v18 waypointIndex:0 editable:0 delegate:self waypointInfoProvider:0 cellIndex:1];
      [v3 addObject:v19];

      v20 = [RoutePlanningWaypointCell alloc];
      lastObject = [waypoints lastObject];
      v68 = lastObject;
      v22 = [NSArray arrayWithObjects:&v68 count:1];
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [waypoints count] - 1);
      v24 = objc_loadWeakRetained(&self->_waypointInfoProvider);
      v25 = [(RoutePlanningWaypointCell *)v20 initWithWaypoints:v22 waypointIndex:v23 editable:0 delegate:self waypointInfoProvider:v24 cellIndex:2];
      [v3 addObject:v25];
    }

    else
    {
LABEL_16:
      v26 = [(RoutePlanningWaypointListView *)self editingMode]== 2;
      mprEnabled = [(RoutePlanningWaypointListView *)self mprEnabled];
      v28 = 2;
      if (v5 < 2)
      {
        v28 = v5;
      }

      if (!mprEnabled)
      {
        v5 = v28;
      }

      if (v5 <= 1)
      {
        v49 = sub_10006D178();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [NSString stringWithFormat:@"waypointDisplayCount is %lu, should be >= 2", 1];
          *buf = 136316162;
          v59 = "[RoutePlanningWaypointListView _reloadAllRows]";
          v60 = 2080;
          v61 = "RoutePlanningWaypointListView.m";
          v62 = 1024;
          v63 = 304;
          v64 = 2080;
          v65 = "waypointDisplayCount >= 2";
          v66 = 2112;
          v67 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
        }

        if (sub_100E03634())
        {
          v51 = sub_10006D178();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v59 = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      lastObject = [waypoints subarrayWithRange:{0, v5}];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100BD76C8;
      v53[3] = &unk_10164CDA0;
      v57 = v26;
      v54 = v3;
      selfCopy = self;
      v56 = v5;
      [lastObject enumerateObjectsUsingBlock:v53];
      v22 = v54;
    }

    v29 = [(RoutePlanningWaypointListView *)self _findLastEmptyWaypointCell:v3];
    objc_storeWeak(&self->_lastEmptyWaypointCell, v29);

    if (_hasAllValidWaypoints)
    {
      v30 = objc_opt_new();
      [v3 addObject:v30];

      lastObject2 = [v3 lastObject];
      objc_storeWeak(&self->_addStopCell, lastObject2);

      v32 = objc_loadWeakRetained(&self->_addStopCell);
      [v32 setIconViewTag:10101];

      _shouldEnableAddStopCell = [(RoutePlanningWaypointListView *)self _shouldEnableAddStopCell];
      v34 = objc_loadWeakRetained(&self->_addStopCell);
      [v34 setEnabled:_shouldEnableAddStopCell];
    }

    [(RoutePlanningWaypointTableView *)self->_tableView separatorInset];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    firstObject2 = [v3 firstObject];
    [firstObject2 preferredSeparatorInset];
    v43 = v42;

    if (_UISolariumEnabled())
    {
      if (sub_10000FA08(self) == 5)
      {
        v40 = 18.0;
      }

      else
      {
        v40 = 20.0;
      }
    }

    [(RoutePlanningWaypointTableView *)self->_tableView setSeparatorInset:v36, v43, v38, v40];
    selectedIndex = self->_selectedIndex;
    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || selectedIndex >= [v3 count] || ((objc_msgSend(v3, "objectAtIndexedSubscript:", self->_selectedIndex), v45 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v46 = 0) : (v46 = v45), v47 = v46, v45, !v47))
    {
      v45 = 0;
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeStrong(&self->_rows, v3);
    [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];
    [(RoutePlanningWaypointTableView *)self->_tableView reloadData];
    [(RoutePlanningWaypointListView *)self _restoreCurrentlySelectedEditingIfNeeded:v45];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "No waypoints, clear list", buf, 2u);
    }

    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activelyEditingSelectedField = 0;
    rows = self->_rows;
    self->_rows = 0;

    objc_storeWeak(&self->_addStopCell, 0);
    self->_hasCollapsedStops = 0;
    [(RoutePlanningWaypointListView *)self setHidden:1];
    [(RoutePlanningWaypointListView *)self invalidateIntrinsicContentSize];
    [(RoutePlanningWaypointTableView *)self->_tableView reloadData];
    [(RoutePlanningWaypointListView *)self _layoutDottedLines];
    [(RoutePlanningWaypointListView *)self _updateLayoutGuideForCurrentlyEditingField];
  }
}

- (BOOL)_hasAllValidWaypoints
{
  if (!_UISolariumEnabled() || sub_10000FA08(self) != 5)
  {
    return 1;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  waypoints = [(RoutePlanningWaypointListView *)self waypoints];
  v4 = [waypoints countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(waypoints);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEmpty])
        {
          v8 = 0;
          goto LABEL_14;
        }
      }

      v5 = [waypoints countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_14:

  return v8;
}

- (void)refreshWaypointDisplay
{
  if (self->_waypoints)
  {
    [(RoutePlanningWaypointListView *)self _reloadAllRows];
  }
}

- (unint64_t)userAddedWaypointCount
{
  waypoints = [(RoutePlanningWaypointListView *)self waypoints];
  v3 = sub_1000282CC(waypoints, &stru_10164CD78);
  v4 = [v3 count];

  return v4;
}

- (void)setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if ([waypointsCopy count] == 1 && -[RoutePlanningWaypointListView editingMode](self, "editingMode") == 2)
  {
    v5 = objc_opt_new();
    v6 = [waypointsCopy arrayByAddingObject:v5];

    v7 = sub_100BD3038();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Inserted additional waypoint to ensure we have a minimum of two", buf, 2u);
    }

    waypointsCopy = v6;
  }

  v8 = self->_waypoints;
  v9 = waypointsCopy;
  if (v9 | v8)
  {
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100BD3038();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Updating waypoints...", v14, 2u);
      }

      v12 = [v9 mutableCopy];
      waypoints = self->_waypoints;
      self->_waypoints = v12;

      [(RoutePlanningWaypointListView *)self _reloadAllRows];
    }
  }
}

- (NSArray)waypoints
{
  if ([(NSMutableArray *)self->_waypoints count]<= 1 && [(RoutePlanningWaypointListView *)self editingMode]== 2)
  {
    firstObject = [(NSMutableArray *)self->_waypoints firstObject];
    v4 = firstObject;
    if (firstObject)
    {
      v5 = firstObject;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;

    v7 = [NSMutableArray alloc];
    v8 = objc_opt_new();
    v9 = [v7 initWithObjects:{v6, v8, 0}];
    waypoints = self->_waypoints;
    self->_waypoints = v9;
  }

  v11 = self->_waypoints;

  return v11;
}

- (void)_updateLayoutGuideForCurrentlyEditingField
{
  if (self->_layoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v3 = self->_tableView;
  selectedIndex = [(RoutePlanningWaypointListView *)self selectedIndex];
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(RoutePlanningWaypointListView *)self cellForIndex:selectedIndex];

    v3 = v5;
  }

  layoutGuideForCurrentlyEditingField = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  widthAnchor = [layoutGuideForCurrentlyEditingField widthAnchor];
  widthAnchor2 = [(RoutePlanningWaypointTableView *)self->_tableView widthAnchor];
  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v31[0] = v25;
  layoutGuideForCurrentlyEditingField2 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  centerXAnchor = [layoutGuideForCurrentlyEditingField2 centerXAnchor];
  centerXAnchor2 = [(RoutePlanningWaypointTableView *)self->_tableView centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[1] = v21;
  layoutGuideForCurrentlyEditingField3 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  heightAnchor = [layoutGuideForCurrentlyEditingField3 heightAnchor];
  heightAnchor2 = [(RoutePlanningWaypointTableView *)v3 heightAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v31[2] = v17;
  layoutGuideForCurrentlyEditingField4 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  topAnchor = [layoutGuideForCurrentlyEditingField4 topAnchor];
  topAnchor2 = [(RoutePlanningWaypointTableView *)v3 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[3] = v8;
  bottomAnchor = [(RoutePlanningWaypointTableView *)v3 bottomAnchor];
  layoutGuideForCurrentlyEditingField5 = [(RoutePlanningWaypointListView *)self layoutGuideForCurrentlyEditingField];
  bottomAnchor2 = [layoutGuideForCurrentlyEditingField5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[4] = v12;
  v13 = [NSArray arrayWithObjects:v31 count:5];
  layoutGuideConstraints = self->_layoutGuideConstraints;
  self->_layoutGuideConstraints = v13;

  [NSLayoutConstraint activateConstraints:self->_layoutGuideConstraints];
  v15 = sub_100BD3038();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Updating layout guide to %@", buf, 0xCu);
  }
}

- (RoutePlanningWaypointListView)initWithWaypoints:(id)waypoints editingMode:(unint64_t)mode delegate:(id)delegate waypointInfoProvider:(id)provider
{
  waypointsCopy = waypoints;
  obj = delegate;
  providerCopy = provider;
  v70.receiver = self;
  v70.super_class = RoutePlanningWaypointListView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(RoutePlanningWaypointListView *)&v70 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v14 = [waypointsCopy mutableCopy];
    waypoints = height->_waypoints;
    height->_waypoints = v14;

    height->_editingMode = mode;
    objc_storeWeak(&height->_delegate, obj);
    objc_storeWeak(&height->_waypointInfoProvider, providerCopy);
    height->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    height->_expandedStops = ![(RoutePlanningWaypointListView *)height _supportsCollapsingStops];
    [(RoutePlanningWaypointListView *)height setAccessibilityIdentifier:@"RoutePlanningWaypointListView"];
    height2 = [[RoutePlanningWaypointTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, y, width, height];
    tableView = height->_tableView;
    height->_tableView = height2;

    [(RoutePlanningWaypointTableView *)height->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RoutePlanningWaypointTableView *)height->_tableView setDelegate:height];
    [(RoutePlanningWaypointTableView *)height->_tableView setDataSource:height];
    [(RoutePlanningWaypointTableView *)height->_tableView _setTopPadding:0.0];
    [(RoutePlanningWaypointTableView *)height->_tableView _setBottomPadding:0.0];
    [(RoutePlanningWaypointTableView *)height->_tableView setSectionHeaderHeight:0.0];
    [(RoutePlanningWaypointTableView *)height->_tableView setSectionFooterHeight:0.0];
    v18 = +[UIColor clearColor];
    [(RoutePlanningWaypointTableView *)height->_tableView setBackgroundColor:v18];

    if (sub_10000FA08(height) == 5)
    {
      v19 = 0.01;
    }

    else
    {
      +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
      v19 = v20;
    }

    v21 = _UISolariumEnabled();
    v22 = v19;
    v23 = v19;
    if ((v21 & 1) == 0)
    {
      if (sub_10000FA08(height) == 5)
      {
        v22 = 8.0;
      }

      else
      {
        v22 = 16.0;
      }

      if (sub_10000FA08(height) == 5)
      {
        v23 = 8.0;
      }

      else
      {
        v23 = 16.0;
      }
    }

    [(RoutePlanningWaypointTableView *)height->_tableView setDirectionalLayoutMargins:0.0, v22, 0.0, v23];
    [(RoutePlanningWaypointTableView *)height->_tableView setSeparatorStyle:1];
    v24 = (sub_10000FA08(height) != 5 || _UISolariumEnabled()) && mode == 2;
    [(RoutePlanningWaypointTableView *)height->_tableView setScrollEnabled:v24];
    [(RoutePlanningWaypointTableView *)height->_tableView setAlwaysBounceVertical:0];
    [(RoutePlanningWaypointTableView *)height->_tableView setDragInteractionEnabled:mode != 0];
    [(RoutePlanningWaypointTableView *)height->_tableView setAccessibilityIdentifier:@"RoutePlanningWaypointListViewTableView"];
    v25 = _UISolariumEnabled();
    v26 = sub_10000FA08(height);
    v27 = 44.0;
    if (v26 == 5)
    {
      v27 = 28.0;
    }

    v28 = 52.0;
    if (v26 == 5)
    {
      v28 = 36.0;
    }

    if (v25)
    {
      v27 = v28;
    }

    [(RoutePlanningWaypointTableView *)height->_tableView setEstimatedRowHeight:v27];
    [(RoutePlanningWaypointTableView *)height->_tableView _setAllowsReorderingWhenNotEditing:1];
    [(RoutePlanningWaypointListView *)height addSubview:height->_tableView];
    v29 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    glassView = height->_glassView;
    height->_glassView = v29;

    v31 = +[UIColor clearColor];
    [(UIView *)height->_glassView setBackgroundColor:v31];

    [(UIView *)height->_glassView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = sub_10000FA08(height);
    v33 = 26.0;
    if (v32 == 5)
    {
      v33 = 16.0;
    }

    [(UIView *)height->_glassView _setContinuousCornerRadius:v33];
    [(RoutePlanningWaypointListView *)height insertSubview:height->_glassView below:height->_tableView];
    [(UIView *)height->_glassView _maps_applyLossyGlassBackground];
    leadingAnchor = [(RoutePlanningWaypointTableView *)height->_tableView leadingAnchor];
    leadingAnchor2 = [(RoutePlanningWaypointListView *)height leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v71[0] = v61;
    trailingAnchor = [(RoutePlanningWaypointTableView *)height->_tableView trailingAnchor];
    trailingAnchor2 = [(RoutePlanningWaypointListView *)height trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v71[1] = v58;
    topAnchor = [(RoutePlanningWaypointTableView *)height->_tableView topAnchor];
    topAnchor2 = [(RoutePlanningWaypointListView *)height topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v71[2] = v55;
    bottomAnchor = [(RoutePlanningWaypointTableView *)height->_tableView bottomAnchor];
    bottomAnchor2 = [(RoutePlanningWaypointListView *)height bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v71[3] = v52;
    leadingAnchor3 = [(UIView *)height->_glassView leadingAnchor];
    leadingAnchor4 = [(RoutePlanningWaypointTableView *)height->_tableView leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v19];
    v71[4] = v49;
    trailingAnchor3 = [(UIView *)height->_glassView trailingAnchor];
    trailingAnchor4 = [(RoutePlanningWaypointTableView *)height->_tableView trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v19];
    v71[5] = v34;
    topAnchor3 = [(UIView *)height->_glassView topAnchor];
    topAnchor4 = [(RoutePlanningWaypointTableView *)height->_tableView topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v71[6] = v37;
    bottomAnchor3 = [(UIView *)height->_glassView bottomAnchor];
    bottomAnchor4 = [(RoutePlanningWaypointTableView *)height->_tableView bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v71[7] = v40;
    v41 = [NSArray arrayWithObjects:v71 count:8];
    [NSLayoutConstraint activateConstraints:v41];

    v42 = objc_alloc_init(UILayoutGuide);
    layoutGuideForCurrentlyEditingField = height->_layoutGuideForCurrentlyEditingField;
    height->_layoutGuideForCurrentlyEditingField = v42;

    [(UILayoutGuide *)height->_layoutGuideForCurrentlyEditingField setIdentifier:@"RoutePlanning.CurrentlyEditingField"];
    [(RoutePlanningWaypointListView *)height addLayoutGuide:height->_layoutGuideForCurrentlyEditingField];
    isScrollEnabled = [(RoutePlanningWaypointTableView *)height->_tableView isScrollEnabled];
    LODWORD(v45) = 1148846080;
    if (isScrollEnabled)
    {
      *&v45 = 750.0;
    }

    [(RoutePlanningWaypointListView *)height setContentCompressionResistancePriority:1 forAxis:v45];
    [(RoutePlanningWaypointListView *)height _reloadAllRows];
    [(RoutePlanningWaypointListView *)height _updateLayoutGuideForCurrentlyEditingField];
    objc_initWeak(&location, height);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100BD87C4;
    v67[3] = &unk_101661B98;
    objc_copyWeak(&v68, &location);
    [(RoutePlanningWaypointTableView *)height->_tableView setPostLayoutHandler:v67];
    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
  }

  return height;
}

@end